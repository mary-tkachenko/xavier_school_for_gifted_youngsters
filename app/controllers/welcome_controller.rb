class WelcomeController < ApplicationController
    def index
        # method: get
        # action: index
        # template: students/index.html.erb
       
      end
    
      def show
        # method: get
        # action: index
        # template: students/show.html.erb
        @user = User.find(session[:user_id])
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