class RenameGoingsToVisits < ActiveRecord::Migration[6.0]
  def change
  	rename_table :goings, :visits
  end
end
