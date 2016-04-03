class CreatePlantSpots < ActiveRecord::Migration
  def change
    create_table :plant_spots do |t|
      t.integer :x_position
      t.references :plants_container, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
