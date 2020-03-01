class PostsController < ApplicationController
    def index
        @posts=Post.all
        render json:{posts:@posts}
    end

    def create
        byebug
        post=Post.new(post_params)
        if post.save
            render json:{post:post}
        else
            render json:{error:'not valid'}
        end
    end

    private
    def post_params
        params.require(:post).permit(:title, :description, :price)
    end
end
