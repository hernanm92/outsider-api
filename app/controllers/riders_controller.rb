class RidersController < ApplicationController

  protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }
  #porque tengo que poner esto? validacion de rails para evitar CSRF attacks

  def index
    @riders = Rider.all
    render json: @riders
  end

  def show
    @rider = Rider.find_by!(rider_find_params)
    render json: @rider
  end

  def create
    @rider = Rider.create!(rider_create_params)
    render json: @rider
  end

  def update
    @rider = Rider.find_by!(rider_find_params)
    @rider.update! rider_update_params
    render json: @rider
  end

  def destroy
    @rider = Rider.find_by!(rider_find_params)
    @rider.destroy!
    render json: @rider
  end

  private

  def rider_create_params
    {
        name: params.require(:name),
        alias: params.require(:alias),
        sport: params.require(:sport),
        photo_url: params.require(:photo_url),
        birthdate: params[:birthdate],
        description: params.require(:description),
        nickname: [:nickname],
        procedence: params[:procedence],
        residence: params[:residence],
        stance: params[:stance],
        quote: params[:quote],
        facebook: params[:facebook],
        instagram: params[:instagram],
        twitter: params[:twitter],
        spots: params[:spots]
    }
  end

  def rider_find_params
    {
        alias: params.require(:id) #id es el que le viene por url
    }
  end

  def rider_update_params
    params.slice(:alias, :name, :sport, :photo_url, :birthdate, :description, :nickname, :procedence, :residence, :stance, :quote, :facebook, :instagram, :spots).permit! #no son obligatorios
  end
end
