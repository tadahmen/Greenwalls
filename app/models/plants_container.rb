class PlantsContainer < ActiveRecord::Base
  has_many :plant_spots, dependent: :destroy
  has_many :plants_containers, through: :plant_spots
end
