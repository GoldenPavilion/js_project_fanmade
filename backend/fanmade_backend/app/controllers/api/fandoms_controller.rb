class Api::FandomsController < ApplicationController
   
    def index
        fandoms = Fandom.all
        render json: FandomSerializer.new(fandoms)
    end

    def show
        fandom = Fandom.find_by(id: params[:id])
        render json: FandomSerializer.new(fandom)
    end

end
