class PlantsController < ApplicationController

  def index
    render json: {
      meta: {
        count: Plant.all.count,
        page: 0
      },
      plants: Plant.all.order(:name)
    }
  end

end
