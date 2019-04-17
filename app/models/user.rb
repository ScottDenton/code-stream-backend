class User < ApplicationRecord
  has_many :videos
  has_many :favorites


  has_secure_password
end
