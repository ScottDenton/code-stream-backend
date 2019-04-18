class UserSerializer < ActiveModel::Serializer
  has_many :videos
  has_many :favorites

  attributes :id, :username, :password_digest, :user_id
end
