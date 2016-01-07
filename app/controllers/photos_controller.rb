class PhotosController < ApplicationController

  protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }
  #porque tengo que poner esto? validacion de rails para evitar CSRF attacks

  def index
    @photos = Photo.all
    render json: @photos
  end

  def show
    @photo = Photo.find_by!(photo_find_params)
    render json: @photo
  end

  def create
    @photo = Photo.create!(photo_create_params)
    render json: @photo
  end

  def update
    @photo = Photo.find_by!(photo_find_params)
    @photo.update! photo_update_params
    render json: @photo
  end

  def destroy
    @photo = Photo.find_by!(photo_find_params)
    @photo.destroy!
    render json: @photo
  end

  private

  def photo_create_params
    {
        title: params.require(:title),
        description: params.require(:description),
        url: params.require(:url),
        sport: params.require(:sport),
        rider: params.require(:rider)
    }
  end

  def photo_find_params
    {
        id: params.require(:id) #id es el que le viene por url
    }
  end

  def photo_update_params
    params.slice(:title, :description, :url, :sport, :rider).permit! #no son obligatorios
  end
end
