class UsersController < ApplicationController
    before_action :set_user, only: [:show, :update, :destroy]

    def index
        users = User.all 
        render json: users
    end

    def show
        render json: @user
    end

    def create 
        user = User.create(user_params)
        render json: user 
    end

    def update 
        @user.update(user_params)
        render json: @user 
    end

    def destroy 
        userId = @user.id 
        @user.destroy 
        render json: {message:"Zap Pow deleted!", userId:userId}
    end

    private

    def user_params 
        params.permit(:name, :username, :password_digest)
    end

    def set_user
        @user = User.find(params[:id])
    end

end
