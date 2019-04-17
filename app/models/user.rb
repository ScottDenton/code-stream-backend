class User < ApplicationRecord
  has_many :videos
  has_many :favorites
  validates :username, {uniqueness: true, presence: true}


  has_secure_password
end
