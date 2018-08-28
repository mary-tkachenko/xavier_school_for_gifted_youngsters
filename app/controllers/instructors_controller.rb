class InstructorsController < ApplicationController
  before_action :allow_only_admin, only: [:new, :create, :edit]
    def index
      @instructors = Instructor.order(:id).all
      @instructors = Instructor.all
      end
    
      def show
        # method: get
        # action: index
        # template: students/show.html.erb
        @instructor = Instructor.find(params[:id])
      end
    
      def new
        # method: get
        # action: index
        # template: students/new.html.erb
        @instructor = Instructor.new
      end

      def create
        Instructor.create(first_name: params[:instructor][:first_name], last_name: params[:instructor][:last_name], nickname: params[:instructor][:nickname], age: params[:instructor][:age], abilities: params[:instructor][:abilities], salary: params[:instructor][:salary], photo_url: params[:instructor][:photo_url],education: params[:instructor][:education], course_id: params[:instructor][:course_id])
        redirect_to "/instructors"
      end

      def edit
        @instructor = Instructor.find(params[:id])
      end

      def update
        instructor_params = {
          first_name: params[:instructor][:first_name],
          last_name: params[:instructor][:last_name],
          nickname: params[:instructor][:nickname],
          age: params[:instructor][:age],
          abilities: params[:instructor][:abilities],
          salary: params[:instructor][:salary],
          photo_url: params[:instructor][:photo_url],
          education: params[:instructor][:education],
          course_id: params[:instructor][:course_id],
        }
        
        @instructor = Instructor.find(params[:id])
        if @instructor.update(instructor_params)
          redirect_to instructor_path(@instructor)
        else
          render 'edit'
        end
      end
end