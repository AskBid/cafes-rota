class ChangeLastVisitToBeDatetypeInVisits < ActiveRecord::Migration[6.0]
  def down
  	# change_column :table_name, :column_name, :new_type
  	change_column :visits, :last_visited, :integer
  end

  def up
  	change_column :visits, :last_visited, :datetime
  end
end
