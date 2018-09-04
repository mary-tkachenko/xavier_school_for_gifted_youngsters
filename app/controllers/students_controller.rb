class StudentsController < ApplicationController

    before_action :allow_only_admin, only: [:new, :create, :edit]

      def index
        @students = Student.order(:id).all
        @cohorts = Cohort.all
      end
    
      def show

      end
    
      def new
        @student = Student.new
      end

      def create
        @student = Student.new(
          first_name: params[:student][:first_name],
          last_name: params[:student][:last_name],
          nickname: params[:student][:nickname],
          age: params[:student][:age],
          abilities: params[:student][:abilities],
          photo: params[:student][:photo],
          cohort_id: params[:student][:cohort_id],
        )
        if @student.save
          redirect_to "/students"
        else
          render 'new'
        end
      end
    
      def edit
        # method: get
        # action: index
        # template: students/edit.html.erb
        @student = Student.find(params[:id])
      end

      def update
        student_params = {
          first_name: params[:student][:first_name],
          last_name: params[:student][:last_name],
          nickname: params[:student][:nickname],
          age: params[:student][:age],
          abilities: params[:student][:abilities],
          photo: params[:student][:photo],
          cohort_id: params[:student][:cohort_id],
        }
        
        @student = Student.find(params[:id])
        if @student.update(student_params)
          redirect_to "/students"
        else
          render 'edit'
        end
      end

      def destroy
        @student = Student.find(params[:id])
        @student.destroy
      end
   
end