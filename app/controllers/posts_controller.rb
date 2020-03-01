class PostsController < ApplicationController
    def index
        @posts=Post.all
        render json:{posts:@posts}
    end

    def create
        buebug
    end
end
