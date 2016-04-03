class CreatePlants < ActiveRecord::Migration
  def change
    create_table :plants do |t|
      t.string :name
      t.string :picture
      t.references :plant_spot, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
