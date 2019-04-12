class Video < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :favorites, as: :favorable
end
