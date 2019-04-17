class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :user_id
      t.string :password_digest
      t.timestamps
    end
  end
end
