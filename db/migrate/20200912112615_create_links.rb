class CreateLinks < ActiveRecord::Migration[6.0]
  def change
    create_table :links do |t|
      t.string :name
      t.string :url
      t.integer :cafe_id

      t.timestamps
    end
  end
end
