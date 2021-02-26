class FavRecipeSerializer < ActiveModel::Serializer
  attributes :id, :recipe_id, :user_id, :note
end
