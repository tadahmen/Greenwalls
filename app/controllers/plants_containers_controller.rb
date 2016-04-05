class PlantsContainersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    render json: {
      meta: {
        count: PlantsContainer.all.count,
        page: 0
      },
      plants_containers: PlantsContainer.all.order(:name)
    }
  end

end
