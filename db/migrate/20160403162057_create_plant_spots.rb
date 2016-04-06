class CreatePlantSpots < ActiveRecord::Migration
  def change
    create_table :plant_spots do |t|
      t.integer :x_position
      t.references :plants_container, index: true, foreign_key: true
      # t.references :plant, index: true, foreign_key: true #test

      t.timestamps null: false
    end
  end
end
