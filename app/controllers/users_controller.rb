class UsersController < ApplicationController
    def index
        render json: {status:'Iam in'}
    end

    def myPosts
        byebug
        render json: current_user.posts
    end

    def create  
        user=User.new(user_params)
        if user.save
            render json: {status: 'logged in', user:user}
        else
            render json: {status: 'not logged in', errors:user.errors.full_messages}
        end
        

    end

    private

    def user_params
        params.require(:user).permit(:firstName, :lastName, :username, :email, :password)
    end
end
