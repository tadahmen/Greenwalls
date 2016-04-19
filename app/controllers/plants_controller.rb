class PlantsController < ApplicationController
  # skip_before_action :verify_authenticity_token

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
    render json: Plant.find(params[:id])
  end

  private

  def plants_params
    params.require(:plant).permit(:id, :name, :picture)
  end

end
