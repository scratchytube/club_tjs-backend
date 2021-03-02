class FavGoodSerializer < ActiveModel::Serializer
  attributes :id, :good_id, :user_id, :note

  belongs_to :good
end
