class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username

  has_many :fav_recipes
  has_many :fav_goods
end
