class PlantSpotsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    render json: {
      meta: {
        count: PlantSpot.all.count,
        page: 0
      },
      plant_spots: PlantSpot.all.order(:name)
    }
  end

end
