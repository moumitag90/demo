class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.string :description
      t.integer :user_id
      t.timestamps
    end
  add_foreign_key :posts, :users
  end
end
