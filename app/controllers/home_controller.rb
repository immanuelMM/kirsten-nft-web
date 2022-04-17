class HomeController < ApplicationController
    # before_action :authenticate_user!
    def index 
    end
    def admin 
    end
    def user 
        # @user = User.where(user_id: current_user.id)
            if current_user
                @email = current_user.email
            else
                redirect_to new_user_session_path, notice: 'You are not logged in.'
            end
    end
    def design?
            current_user
    end
    def biding?
        current_user
    end
end
