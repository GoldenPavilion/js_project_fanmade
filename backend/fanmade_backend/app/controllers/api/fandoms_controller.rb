class Api::FandomsController < ApplicationController
   
    def index
        fandoms = Fandom.all
        render json: FandomSerializer.new(fandoms)
    end

    def show
    end

    private

    def fandom_params
    end

end
