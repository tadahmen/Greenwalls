class Plant < ActiveRecord::Base
  has_many :plant_spots, dependent: :destroy
  has_many :plants, through: :plant_spots
end
