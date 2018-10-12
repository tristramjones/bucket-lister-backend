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

  def new
    @location = Location.new
  end

  def create
    puts "create",location_params
    @location = Location.create(location_params)
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

  def location_params
    puts "params ",params
    params.permit(:name, :location_json)
  end

end
