class CoursesController < ApplicationController
  before_action :allow_only_admin, only: [:new, :create, :edit]
    def index
        # method: get
        # action: index
        # template: students/index.html.erb
        @courses = Course.order(:id).all
        @courses = Course.all
      end
    
      def show
      end
    
      def new
        @course = Course.new
      end
    
      def create
        @course = Course.new(
          name: params[:course][:name],
          class_hours: params[:course][:class_hours],
        )
        if @course.save
          redirect_to courses_path
        else
          render 'new'
        end
      end
    
      def edit
        @course = Course.find(params[:id])
      end

      def update
        course_params = {
          name: params[:course][:name],
          class_hours: params[:course][:class_hours],
        }
        
        @course = Course.find(params[:id])
        if @course.update(course_params)
          redirect_to course_path(@course)
        else
          render 'edit'
        end
      end
end