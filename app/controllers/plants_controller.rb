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

end
