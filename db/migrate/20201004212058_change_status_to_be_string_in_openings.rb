class ChangeStatusToBeStringInOpenings < ActiveRecord::Migration[6.0]
  def up
  	change_column :openings, :status, :string
  end  

  def down
  	change_column :openings, :status, :boolean
  end
end
