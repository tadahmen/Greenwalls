class PlantsContainer < ActiveRecord::Base
  has_many :plant-spots, dependent: :destroy
end
