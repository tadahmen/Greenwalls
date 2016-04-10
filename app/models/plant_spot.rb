class PlantSpot < ActiveRecord::Base
  belongs_to :plants_container
  belongs_to :plant
end
