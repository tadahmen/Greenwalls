class CreatePlantsContainers < ActiveRecord::Migration
  def change
    create_table :plants_containers do |t|
      t.string :name
      t.float :prize

      t.timestamps null: false
    end
  end
end
