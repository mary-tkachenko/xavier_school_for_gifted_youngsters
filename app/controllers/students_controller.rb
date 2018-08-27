class StudentsController < ApplicationController

    before_action :allow_only_admin, only: [:new, :create, :edit]

    def index
        # method: get
        # action: index
        # template: students/index.html.erb
        @students = Student.all
      end
    
      def show
        # method: get
        # action: index
        # template: students/show.html.erb
      end
    
      def new

        # method: get
        # action: index
        # template: students/new.html.erb
        @student = Student.new
      end

      def create
        Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name], nickname: params[:student][:nickname], age: params[:student][:age], abilities: params[:student][:abilities], photo: params[:student][:photo], cohort_id: params[:student][:cohort_id])
        redirect_to "/students"
      end
    
      def edit
        # method: get
        # action: index
        # template: students/edit.html.erb
      end
end