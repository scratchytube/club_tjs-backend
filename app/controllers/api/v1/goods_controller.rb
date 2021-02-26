class Api::V1::GoodsController < ApplicationController
    before_action :set_good, only: [:show, :update, :delete]

    def index 
        goods = Good.all 
        render json: goods
    end

    def show 
        render json: @good 
    end

    def create 
        good = Good.create(goods_params)
        render json: good
    end

    def update 
        @good.update(goods_params)
        render json: @good
    end

    def destroy 
        goodId = @good.id 
        @good.destroy 
        render json: {message:"Boom Kablow deleted!", goodId:goodId}
    end



    private

    def set_good
        @good = Good.find(params[:id])
    end

    def goods_params 
        params.permit(:name, :image, :likes)
    end
end
