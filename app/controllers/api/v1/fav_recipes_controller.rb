class FavRecipesController < ApplicationController
    before_action :set_favRecipes, only: [:show, :update, :delete]

    def index 
        fav_recipes = FavRecipe.all 
        render json: fav_recipes 
    end

    def show 
        render json: @fav_recipe
    end

    def create 
        fav_recipe = FavRecipe.create(favRecipe_params)
        render json: fav_recipe 
    end

    def update 
        @fav_recipe.update(favRecipe_params)
        render json: @fav_recipe
    end

    def destoy 
        fav_RecipeId = @fav_recipe.id 
        @fav_recipe.destroy 
        render json: {message:"pew pew its gone forever!", favRecipeId:favRecipeId}
    end


    private 

    def favRecipe_params 
        params.permit(:recipe_id, :user_id, :note)
    end

    def set_favRecipes 
        @fav_recipe = FavRecipe.find(params[:id])
    end
end
