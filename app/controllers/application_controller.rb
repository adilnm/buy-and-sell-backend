class ApplicationController < ActionController::Base
    skip_before_action :verify_authenticity_token

    def loggedin?
        !!session[:id]
    end

    def current_user
        User.find(session[:id])
    end

end
