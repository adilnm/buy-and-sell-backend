class SessionsController < ApplicationController
    def create
        user=User.find_by(username:params[:user][:username])
        if user && user.authenticate(params[:user][:password])
            session[:user_id]=user.id
            render json: {status:'logged in', user:user}
        end
    end

end