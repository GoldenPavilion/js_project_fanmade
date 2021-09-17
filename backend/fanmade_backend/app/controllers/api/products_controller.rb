class Api::ProductsController < ApplicationController
    def index
        products = Product.all
        render json: products
    end

    def create
        product = Product.new(product_params)
    end

    private

    def product_params
        params.require(:product).permit(:name, :company, :fandom, :price, :description, :link, :category_id)
    end
end
