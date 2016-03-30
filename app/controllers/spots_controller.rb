class SpotsController < ApplicationController

  def index
    @spots = Spot.all
    render json: @spots
  end

  def show
    @spot = Spot.find_by!(spot_find_params)
    render json: @spot
  end

  def create
    @spot = Spot.create!(spot_create_params)
    render json: @spot
  end

  def update
    @spot = Spot.find_by!(spot_find_params)
    @spot.update! spot_update_params
    render json: @spot
  end

  def destroy
    @spot = Spot.find_by!(spot_find_params)
    @spot.destroy!
    render json: @spot
  end

  private

  def spot_create_params
    {
        name: params.require(:name),
        alias: params.require(:alias),
        address: params.require(:address),
        latitude: params[:latitude],
        longuitude: params[:longuitude],
        url: params.require(:url),
        description: params[:description],
        sports: params[:sports]
    }
  end

  def spot_find_params
    {
        alias: params.require(:id) #id es el que le viene por url
    }
  end

  def spot_update_params
    params.slice(:alias, :name, :address, :latitude, :longuitude, :url, :description, :sports).permit! #no son obligatorios
  end
end
