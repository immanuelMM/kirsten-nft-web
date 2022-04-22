class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

         def configure_permitted_parameters
              devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name,:firstname,:middlename,:address,:number, :email, :password)}

              devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name,:firstname,:middlename,:address,:number, :email, :password, :current_password)}
         end
    def after_sign_in_path_for(resource)
        case resource
        when @user
            user_home_path
        when @admin
            admin_home_path
        else
         
        end
      end
    #   def after_sign_up_path_for(resource)
    #     case resource
    #     when @user
    #         user_home_path
    #     when @admin
    #         admin_home_path
    #     else
         
    #     end
    #   end
    before_action :devise_controller?

    # protect_from_forgery
 
#   def after_sign_in_path_for(resource)
#     sign_in_url = new_user_session_url
#     if request.referer == sign_in_url
#       super
#     else
#       stored_location_for(resource) || request.referer || root_path
#     end
#   end
require 'uri'
require 'net/http'
require 'openssl'

end
