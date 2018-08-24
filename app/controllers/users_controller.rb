class UsersController < ApplicationController
    def index
        # method: get
        # action: index
        # template: students/index.html.erb
        @users = User.all
        @user_id = session[:user_id]
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

        @user_id = session[:user_id]
        @user = User.new
      end

      def create
        @user = User.create(params[:user])
      end
    
      def edit
        # method: get
        # action: index
        # template: students/edit.html.erb
      end
end