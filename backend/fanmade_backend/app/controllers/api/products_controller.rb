class Api::ProductsController < ApplicationController

    before_action :find_product, only: [:show, :destroy]

    def index
        products = Product.all
        render json: ProductSerializer.new(products)
    end

    def create
        product = Product.new(product_params)
        if product.save
            render json: ProductSerializer.new(product)
        else
            render json: {errors: product.errors.full_messages}
        end
    end

    def show
        render json: ProductSerializer.new(@product)
    end

    def destroy
        @product.destroy
    end

    private

    def find_product
        @product = Product.find_by(id: params[:id])
    end

    def product_params
        params.require(:product).permit(:name, :company, :price, :description, :link, :img, :category_id, :fandom_id)
    end
end
