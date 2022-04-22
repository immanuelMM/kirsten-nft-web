class HomeController < ApplicationController
    # before_action :authenticate_user!
    def index 
    end
    def admin 
    end
    def users 
        # @user = User.where(user_id: current_user.id)
            if current_admin
                @email = current_admin.email
                @user = User.all
            else
                redirect_to new_user_session_path, notice: 'You are not logged in.'
            end
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
        if current_user
            @email = current_user.email
        else
            redirect_to new_user_session_path, notice: 'You are not logged in.'
        end
    end
    def biding?
        if current_user
            @email = current_user.email
        else
            redirect_to new_user_session_path, notice: 'You are not logged in.'
        end
    end
    def profile?
        if current_user
            @email = current_user.email
        else
            redirect_to new_user_session_path, notice: 'You are not logged in.'
        end
    end
end
