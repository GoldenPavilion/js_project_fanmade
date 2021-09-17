class Api::ProductsController < ApplicationController
    def index
        products = Product.all
        render json: products
    end

    def create
        product = Product.new(product_params)
        if product.save
            render json: product
        else
            render json: {errors: product.errors.full_messages}
        end
    end

    def show
        product = Product.find_by(id: params[:id])
        render json: product
    end

    private

    def product_params
        params.require(:product).permit(:name, :company, :fandom, :price, :description, :link, :category_id)
    end
end
