class Api::CategoriesController < ApplicationController

    def index
        categories = Category.all
        render json: categories
    end

    def create
        category = Category.new(category_params)
        if category.save
            render json: category
        else
            render json: {errors: category.errors.full_messages}
        end
    end

    def show
        category = Category.find_by(id: params[:id])
        render json: category
    end

    private

    def category_params
        params.require(:category).permit(:name)
    end
end
