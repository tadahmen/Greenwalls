class PlantSpotsController < ApplicationController
  skip_before_action :verify_authenticity_token

  before_action :set_plants_container

  def index
    render json: {
      meta: {
        count: @plants_container.plant_spots.count,
        page: 0
      },
      plant_spots: @plants_container.plant_spots.order(:id)
    }
  end

  def create
    plant_spot = PlantSpot.new(plant_spot_params)
    plant_spot.plants_container = @plants_container

    if plant_spot = plant_spot.save
      render json: { plant_spot: plant_spot }
    else
      render json: {
        message: "Could not create plant spot",
        errors: plant_spot.errors,
      }, status: :unprocessible_entity
    end
  end

  def update
    plant_spot = PlantSpot.find(params[:id])

    if plant_spot.update(plant_spot_params)
      render json: { plant_spot: plant_spot }
    else
      render json: {
        message: "Could not update plant spot",
        errors: plant_spot.errors,
      }, status: :unprocessible_entity
    end
  end

  def destroy
    plant_spot = @plants_container.plant_spots.find(params[:id])

    if plant_spot.destroy
      render json: { plant_spot: nil }
    else
      render json: {
        message: "Plant spot not deleted, you could try it again.",
      }, status: :unprocessible_entity
    end
  end

  private

  def set_plants_container
    @plants_container = PlantsContainer.find(params[:plants_container_id])
  end

  def plant_spot_params
    params.require(:plant_spot).permit(:x_position, :plant_id, :plants_container_id)
  end

end
