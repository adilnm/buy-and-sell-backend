class CategoriesController < ApplicationController
    def show

        if params[:id]=="0"
            render json: Post.all
        else
            category=Category.find(params[:id])
            render json: category.posts 
        end
    end
end
