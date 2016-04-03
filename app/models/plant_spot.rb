class PlantSpot < ActiveRecord::Base
  belongs_to: plants_container
  has_one :plant
end
