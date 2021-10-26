class Api::CategoriesController < ApplicationController

    def index
        categories = Category.all
        render json: CategorySerializer.new(categories)
    end

    def create
        category = Category.new(category_params)
        if category.save
            render json: CategorySerializer.new(category)
        else
            render json: {errors: category.errors.full_messages}
        end
    end

    def show
        category = Category.find_by(id: params[:id])
        render json: CategorySerializer.new(category)
    end

    private

    def category_params
        params.require(:category).permit(:name)
    end
end
