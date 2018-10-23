class Api::V1::TripsController < ApplicationController
  skip_before_action :authorized

  def index
    @trips = Trip.all.map{|trip| {
      id: trip.id,
      username: (User.find(trip.user_id)).username,
      user_id: trip.user_id,
      location_name: (Location.find(trip.location_id)).name,
      location_id: trip.location_id,
      attractions: trip.attractions
      }
    }
    render json: @trips
  end

  def show
    @trip = Trip.find(params[:id])
    render json: {
      id: @trip.id,
      attractions: @trip.attractions,
      user_name: (User.find(@trip.user_id)).name,
      user_id: @trip.user_id,
      location_name: (Location.find(@trip.location_id)).name,
      location_id: @trip.location_id
    }
  end

  def create
    @trip = ''
    Trip.all.each do |trip|
      if trip["user_id"] == trip_params["user_id"] && trip["location_id"] == trip_params["location_id"]
        @trip = trip
      end
    end

    if @trip == ''
      @trip = Trip.create(trip_params)
    end

    render json: {
      id: @trip.id,
      user_id: @trip.user_id,
      username: (User.find(@trip.user_id)).username,
      location_id: @trip.location_id,
      location_name: (Location.find(@trip.location_id)).name,
    }
  end

  private

  def trip_params
    params.require(:trip).permit(:user_id, :location_id)
  end

end
