class Api::V1::FavGoodsController < ApplicationController
    before_action :set_favGoods, only: [:show, :update, :destroy]

    def index 
        fav_goods = FavGood.all
        render json: fav_goods
    end

    def show 
        render json: @fav_good
    end

    def create 
        fav_good = FavGood.create(favGoods_params)
        render json: fav_good
    end

    def update 
        @fav_good.update(favGoods_params)
        render json: @fav_good
    end

    def destroy 
        @fav_good.destroy 
        render json: @fav_good
    end

    private 

    def favGoods_params 
        params.permit(:good_id, :user_id, :note)
    end

    def set_favGoods 
        @fav_good = FavGood.find(params[:id])
    end
end
