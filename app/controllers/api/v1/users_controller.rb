class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all.map{|user| {
      id: user.id,
      name: user.name,
      trips: user.trips,
      attractions: user.trips.map{|trip| trip.attractions},
      locations: user.locations
      }
    }
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: {
      id: @user.id,
      name: @user.name,
      trips: user.trips,
      attractions: user.trips.map{|trip| trip.attractions},
      locations: @user.locations
    }
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      render json: { user: @user }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

end
