class Api::ProductsController < ApplicationController
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
        product = Product.find_by(id: params[:id])
        render json: ProductSerializer.new(product)
    end

    def destroy
        product = Product.find_by(id: params[:id])
        product.destroy 
    end

    private

    def product_params
        params.require(:product).permit(:name, :company, :price, :description, :link, :img, :category_id, :fandom_id)
    end
end
