class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.integer :favorable_id
      t.string :favorable_type
      t.timestamps
    end
  end
end
