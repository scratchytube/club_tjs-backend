class Recipe < ApplicationRecord
    has_many :fav_recipes
    has_many :users, through: :fav_recipes
end
