class CreatePlantSpots < ActiveRecord::Migration
  def change
    create_table :plant_spots do |t|
      t.integer :x_position
      t.references :plant, index: true, foreign_key: true             #t.belongs_to :plant, index: true
      t.references :plants_container, index: true, foreign_key: true  #t.belongs_to :plants_container, index: true

      t.timestamps null: false
    end
  end
end
