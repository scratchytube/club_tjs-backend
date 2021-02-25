class User < ApplicationRecord
    has_secure_password

    has_many :fav_recipes
    has_many :recipes, through: :fav_recipes

    has_many :fav_goods
    has_many :goods through: :fav_goods
end
