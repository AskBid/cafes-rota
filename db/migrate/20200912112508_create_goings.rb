class CreateGoings < ActiveRecord::Migration[6.0]
  def change
    create_table :goings do |t|
      t.integer :cafe_id
      t.integer :user_id
      t.integer :last_visited
      t.datetime :skip

      t.timestamps
    end
  end
end
