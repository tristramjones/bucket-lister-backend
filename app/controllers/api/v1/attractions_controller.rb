class Api::V1::AttractionsController < ApplicationController

  def index
    @attractions = Attraction.all.map{|attraction| {
      id: attraction.id,
      title: attraction.title,
      description: attraction.description,
      trip_id: attraction.trip_id,
      position: attraction.position
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
      trip_id: @attraction.trip_id,
      position: @attraction.position
    }
  end

  def new
    @attraction = Attraction.new
  end

  def create
    @attraction = Attraction.create(attraction_params)
  end

  def update
    @attraction = Attraction.find(params[:id])
    @attraction.update(attraction_params)
    if @attraction.save
      render json: @attraction, status: :accepted
    else
      render json: { errors: @attraction.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
  end

  private

  def attraction_params
    params.require(:attraction).permit(:title, :description, :trip_id, :position)
  end

end
