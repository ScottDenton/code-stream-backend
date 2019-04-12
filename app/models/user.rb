class User < ApplicationRecord
  has_many :videos
  has_many :favorites, as: :favorable


  has_secure_password
end



# has_many :followers, class_name: "User",
#                     foreign_key: "following_id"
# belongs_to :following, class_name: "User"
# belongs_to :favorable, polymorphic: true
