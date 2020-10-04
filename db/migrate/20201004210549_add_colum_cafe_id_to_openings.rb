class AddColumCafeIdToOpenings < ActiveRecord::Migration[6.0]
  def change
    add_column :openings, :cafe_id, :integer
  end
end
