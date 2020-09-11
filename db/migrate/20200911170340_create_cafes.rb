class CreateCafes < ActiveRecord::Migration[6.0]
  def change
    create_table :cafes do |t|
      t.string :name
      t.string :description
      t.string :location
      t.string :location_url

      t.timestamps
    end
  end
end
