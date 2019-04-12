class FavoriteSerializer < ActiveModel::Serializer
  belongs_to :favorable, polymorphic: true
  attributes :id

end
