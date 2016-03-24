class PhotosController < ApplicationController

  def index
    @photos = Photo.all.order(date: :desc)
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
        date: params[:date],
        spot: params[:spot],
        riders: params[:riders]
    }
  end

  def photo_find_params
    {
        id: params.require(:id) #id es el que le viene por url
    }
  end

  def photo_update_params
    params.slice(:title, :description, :url, :sport, :date, :spot, :riders).permit! #no son obligatorios
  end
end
