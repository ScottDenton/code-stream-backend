class AddFollowedUsernameToFavorites < ActiveRecord::Migration[5.2]
  def change
    add_column :favorites, :followed_username, :string
  end
end
