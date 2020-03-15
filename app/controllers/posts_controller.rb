class PostsController < ApplicationController
    def index
        @posts=Post.all
        render json:@posts
    end

    def create
        post=Post.new(post_params)
        
        if post.save
            render json: post
        else
            render json:{error:'not valid'}
        end
    end

    def update
        post=Post.find(params[:post][:id])
        post.update(post_params)
        render json: post
    end

    private
    def post_params
        params.require(:post).permit(:title, :description, :price, :user_id, :category_id, :image)
    end
end
