class Favorite < ApplicationRecord
belongs_to :favorable, polymorphic: true
end
