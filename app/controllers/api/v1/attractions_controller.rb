class Api::V1::AttractionsController < ApplicationController

  def index
    @attractions = Attraction.all.map{|attraction| {
      id: attraction.id,
      title: attraction.title,
      description: attraction.description,
      trip_id: attraction.trip_id
      }
    }
    render json: @attractions
  end

  def show
    @attraction = Attraction.find(params[:id])
    render json: {
      id: @attraction.id,
      title: @attraction.title,
      description: @attraction.description,
      trip_id: @attraction.trip_id
    }
  end

  def new
    @attraction = Attraction.new
  end

  def create
    @attraction = Attraction.create(attraction_params)
  end

  # def edit
  # end
  #
  # def update
  # end
  #
  # def destroy
  # end

  private

  def attraction_params
    params.require(:attraction).permit(:title, :description, :trip_id)
  end

end
