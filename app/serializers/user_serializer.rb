class UserSerializer < ActiveModel::Serializer
  has_many :videos
  has_many :favorites, as: :favorable

  attributes :id, :username, :password_digest
end
