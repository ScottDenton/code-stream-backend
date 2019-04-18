class FavoriteSerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :id, :user_id, :followed_username, :favorite_type
end
