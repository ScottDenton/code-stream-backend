class FavoriteSerializer < ActiveModel::Serializer
  belongs_to :user
  belongs_to :video
  attributes :id

end
