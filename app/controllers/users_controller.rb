class UsersController < ApplicationController
    def index
        # method: get
        # action: index
        # template: students/index.html.erb
        @users = User.all
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
      end
    
      def edit
        # method: get
        # action: index
        # template: students/edit.html.erb
      end
end