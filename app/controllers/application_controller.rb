class ApplicationController < ActionController::Base
   
        protect_from_forgery with: :exception
   
        before_action :configure_permitted_parameters, if: :devise_controller?
        before_action :authenticate_user!

   
        protected
   
        def configure_permitted_parameters
            devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :role, :email, :password)}
            devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :role, :email, :password, :current_password)}
        end

        def allow_only_admin
            unless current_user.role == 'admin'
                head :forbidden
            end
        end

end
