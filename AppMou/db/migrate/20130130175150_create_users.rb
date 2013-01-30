class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
	t.string :name
	t.integer :roll_no
      t.timestamps
    end
  end
end
