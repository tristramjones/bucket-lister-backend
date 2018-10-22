class Api::V1::LocationsController < ApplicationController

  def index
    @locations = Location.all.map{|location| {
      id: location.id,
      name: location.name,
      location_json: location.location_json,
      users: location.users
      }
    }
    render json: @locations
  end

  def show
    @location = Location.find(params[:id])
    render json: {
      id: @location.id,
      name: @location.name,
      location_json: @location.location_json,
      users: @location.users
    }
  end

  def create
    Location.all.find do |location|
      if location["location_json"] === location_params["location_json"]
        @location = location
      else
        @location = Location.create(location_params)
      end
    end
    render json: @location
  end

  private

  def location_params
    params.permit(:name, :location_json)
  end

end
