class VideoSerializer < ActiveModel::Serializer
  belongs_to :category
  belongs_to :user
  has_many :favorites, as: :favorable
  attributes :id, :user_id, :category_id, :title, :url
end
