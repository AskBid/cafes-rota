class CreateOpenings < ActiveRecord::Migration[6.0]
  def change
    create_table :openings do |t|
      t.string :day
      t.boolean :status

      t.timestamps
    end
  end
end
