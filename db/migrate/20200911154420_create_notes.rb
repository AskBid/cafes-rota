class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.string :text
      t.boolean :public
      t.integer :cafe_id
      t.integer :user_id

      t.timestamps
    end
  end
end
