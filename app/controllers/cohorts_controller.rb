class CohortsController < ApplicationController
  before_action :allow_only_admin, only: [:new, :create, :edit]
    def index
      @cohorts = Cohort.order(:id).all
      @cohorts = Cohort.all
      end
    
      def show
      end
    
      def new
        @cohort = Cohort.new
      end
    
      def create
        @cohort = Cohort.new(
          name: params[:cohort][:name],
          auditorium: params[:cohort][:auditorium],
          start_date: params[:cohort][:start_date],
          end_date: params[:cohort][:end_date],
          students_number: params[:cohort][:students_number],

        )
        if @cohort.save
          redirect_to "/cohorts"
        else
          render 'new'
        end
      end
    
      def edit
        @cohort = Cohort.find(params[:id])
      end

      def update
        cohort_params = {
          name: params[:cohort][:name],
          auditorium: params[:cohort][:auditorium],
          start_date: params[:cohort][:start_date],
          end_date: params[:cohort][:end_date],
          students_number: params[:cohort][:students_number],
        }
        
        @cohort = Cohort.find(params[:id])
        if @cohort.update(cohort_params)
          redirect_to "/cohorts"
        else
          render 'edit'
        end
      end

      def destroy
        @cohort = Cohort.find(params[:id])
        @cohort.destroy
      end
end