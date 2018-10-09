class Api::V1::LocationsController < ApplicationController

  def index
    @locations = Location.all.map{|location| { id: location.id, name: location.name, locations: location.users }}
    render json: @locations
  end

  def show
    @location = Location.find(params[:id])
    render json: { id: @location.id, name: @location.name, users: @location.users }
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.create(location_params)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def location_params
    params.require(:location).permit(:name)
  end

end
