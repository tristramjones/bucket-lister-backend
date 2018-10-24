class Api::V1::AttractionsController < ApplicationController
  skip_before_action :authorized

  def index
    @attractions = Attraction.all.map{|attraction| {
      id: attraction.id,
      title: attraction.title,
      category: attraction.category,
      description: attraction.description,
      trip_id: attraction.trip_id,
      user_id: Trip.find(attraction.trip_id).user_id,
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
      category: @attraction.category,
      description: @attraction.description,
      trip_id: @attraction.trip_id,
      position: @attraction.position
    }
  end

  def create
    @attraction = Attraction.create(attraction_params)
    render json: @attraction
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
    @attraction = Attraction.find(params[:id])
    @attraction.destroy
  end

  private

  def attraction_params
    params.require(:attraction).permit(:title, :description, :trip_id, :category, :position)
  end

end
