class SchedulesController < ApplicationController
  before_action :allow_only_admin, only: [:new, :create, :edit]
    def index
        # method: get
        # action: index
        # template: students/index.html.erb
        @cohorts = Cohort.all
        @schedule = Schedule.all
      end
    
      def show
        @cohort = Cohort.find(params[:id])

        @schedule_days = {};
        Schedule.days_of_week.each do |day|
          results = Schedule.where({ cohort_id: @cohort.id, day_of_week: day }).order(:time)
          if results.count > 0
            @schedule_days[day] = results
          end
        end
      end
    
      def new
        # method: get
        # action: index
        # template: students/new.html.erb
        @schedule = Schedule.new
      end

      def create
        Schedule.create!(
          day_of_week: params[:schedule][:day_of_week],
          time: params[:schedule][:time],
          course_id: params[:schedule][:course_id],
          cohort_id: params[:schedule][:cohort_id],
          instructor_id: params[:schedule][:instructor_id]
        )
        redirect_to "/schedules"
      end
    
      def edit
        @schedule = Schedule.find(params[:id])
      end

      def update
        schedule_params = {
          day_of_week: params[:schedule][:day_of_week],
          time: params[:schedule][:time],
          course_id: params[:schedule][:course_id],
          cohort_id: params[:schedule][:cohort_id],
          instructor_id: params[:schedule][:instructor_id],
        }
        
        @schedule = Schedule.find(params[:id])
        if @schedule.update(schedule_params)
          redirect_to "/schedules"
        else
          render 'edit'
        end
      end

      def destroy
        @schedule = Schedule.find(params[:id])
        @schedule.destroy
        # Do not redirect when requested with AJAX
        respond_to do |format|
          format.js {  }
          format.all { redirect_to "/schedules" }
        end
      end
end