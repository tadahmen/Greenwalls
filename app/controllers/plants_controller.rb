class PlantsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    render json: {
      meta: {
        count: Plant.all.count,
        page: 0
      },
      plants: Plant.all.order(:name)
    }
  end

  def show
    # set_plant
    render json: Plant.find(params[:id])
  end

  # def set_plant
  #   @plant =Plant.find(params[:id])
  # end

end
