class CreateVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :videos do |t|
      t.integer :user_id
      t.integer :category_id
      t.string :title
      t.string :url
      t.timestamps
    end
  end
end
