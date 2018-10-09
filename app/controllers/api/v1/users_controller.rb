class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all.map{|user| { id: user.id, name: user.name, locations: user.locations }}
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: { id: @user.id, name: @user.name, locations: @user.locations }
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
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

  def user_params
    params.require(:user).permit(:name)
  end

end
