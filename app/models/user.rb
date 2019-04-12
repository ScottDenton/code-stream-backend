class User < ApplicationRecord
  has_many :videos
  has_many :favorites, as: :favorable


  has_secure_password
end
