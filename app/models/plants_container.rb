class PlantsContainer < ActiveRecord::Base
  has_many :plant_spots, dependent: :destroy
end
