class Good < ApplicationRecord
    has_many :fav_goods
    has_many :users through:
end
