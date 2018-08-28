class SchedulesController < ApplicationController
  before_action :allow_only_admin, only: [:new, :create, :edit]
    def index
        # method: get
        # action: index
        # template: students/index.html.erb
        @cohorts = Cohort.all
      end
    
      def show
        # @cohorts = Cohort.all
        @schedule = Schedule.find(params[:id])
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