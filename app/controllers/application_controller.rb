class ApplicationController < ActionController::Base
    skip_before_action :verify_authenticity_token

    def logged_in?
        !!session[:user_id]
    end

    def current_user
        User.find(session[:user_id])
    end

end
