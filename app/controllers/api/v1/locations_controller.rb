class Api::V1::LocationsController < ApplicationController
  skip_before_action :authorized

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
    @location = ''
    Location.all.each do |location|
      if location["location_json"] == location_params["location_json"]
        @location = location
      end
    end

    if @location == ''
      @location = Location.create(location_params)
    end
    render json: @location
  end

  private

  def location_params
    params.permit(:name, :location_json)
  end

end
