class PlantsContainersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    render json: {
      meta: {
        count: PlantsContainer.all.count,
        page: 0
      },
      plants_containers: PlantsContainer.all.order(:id)
    }
  end

  def create
    plants_container = PlantsContainer.new(plants_container_params)

    if plants_container = plants_container.save
      render json: { plants_container: plants_container }
    else
      render json: {
        message: "Could not create plant container",
        errors: plants_container.errors,
      }, status: :unprocessible_entity
    end
  end

  def destroy
    plants_container = PlantsContainer.find(params[:id])

    if plants_container.destroy
      render json: { plants_container: nil }
    else
      render json: {
        message: "Plant container not deleted, you could try it again.",
      }, status: :unprocessible_entity
    end
  end

private

def plants_container_params
  params.require(:plants_container).permit(:name, :price)
end

end
