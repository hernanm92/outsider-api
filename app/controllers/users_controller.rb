class UsersController < ApplicationController

  protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }
  #porque tengo que poner esto? validacion de rails para evitar CSRF attacks

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
      name: params.require(:name),
      alias: params.require(:alias),
      password: params.require(:password),
      private: params.require(:private)
    }
  end

  def user_find_params
    {
      alias: params.require(:id) #id es el que le viene por url
    }
  end

  def user_update_params
  	params.slice(:private, :password, :followers, :following).permit! #no son obligatorios
  end
end
