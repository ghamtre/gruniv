class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.string :title
      t.text :description
      t.integer :price

      t.timestamps null: false
    end
  end
end
