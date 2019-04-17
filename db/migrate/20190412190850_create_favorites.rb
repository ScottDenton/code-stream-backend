class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.integer :follower_id
      t.integer :followed_id
      t.string :favorite_type

      t.timestamps
    end
  end
end
