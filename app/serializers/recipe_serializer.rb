class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :api_id, :title, :prep_time, :cooking_time, :ingredients, :directions, :image, :servings
end
