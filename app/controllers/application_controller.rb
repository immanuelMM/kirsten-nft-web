class ApplicationController < ActionController::Base
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

url = URI("https://api.opensea.io/api/v1/collection/doodles-official")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true

request = Net::HTTP::Get.new(url)

response = http.request(request)
@nft =  response.read_body
puts response.read_body
end
