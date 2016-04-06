class PlantSpotsController < ApplicationController
  skip_before_action :verify_authenticity_token

  before_action :set_plants_container

  def index
    render json: {
      meta: {
        count: @plants_container.plant_spots.count,
        page: 0
      },
      plant_spots: @plants_container.plant_spots.order(:x_position)
    }
  end

  private

  def set_plants_container
    @plants_container = PlantsContainer.find(params[:plants_container_id])
  end

end
