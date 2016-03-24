class UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find_by!(user_find_params)
    #se puede hacer de esta manera o con User.find_by_name!(params[:id])
    render json: @user
  end

  def create
    @user = User.create!(user_create_params)
    render json: @user
  end

  def update
    @user = User.find_by!(user_find_params)
    @user.update! user_update_params
    render json: @user
  end

  def destroy
    @user = User.find_by!(user_find_params)
    @user.destroy!
    render json: @user
  end

  private

  def user_create_params
    {
      username: params.require(:username),
      password: params.require(:password)
    }
  end

  def user_find_params
    {
        username: params.require(:id) #id es el que le viene por url
    }
  end

  def user_update_params
  	params.slice(:password).permit! #no son obligatorios
  end
end
