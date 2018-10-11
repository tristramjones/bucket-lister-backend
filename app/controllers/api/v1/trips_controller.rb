class Api::V1::TripsController < ApplicationController

  def index
    @trips = Trip.all.map{|trip| {
      id: trip.id,
      title: trip.title,
      description: trip.description,
      attractions: trip.attractions,
      user_id: trip.user_id,
      location_id: trip.location_id
      }
    }
    render json: @trips
  end

  def show
    @trip = Trip.find(params[:id])
    render json: {
      id: @trip.id,
      title: @trip.title,
      description: @trip.description,
      attractions: trip.attractions,
      user_id: @trip.user_id,
      location_id: @trip.location_id
    }
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.create(trip_params)
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

  def trip_params
    params.require(:trip).permit(:title, :description, :user_id, :location_id)
  end

end
