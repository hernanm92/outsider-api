class VideosController < ApplicationController

  protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }

  def index
    @videos = Video.all
    render json: @videos
  end

  def show
    @video = Video.find_by!(video_find_params)
    render json: @video
  end

  def create
    @video = Video.create!(video_create_params)
    render json: @video
  end

  def update
    @video = Video.find_by!(video_find_params)
    @video.update! video_update_params
    render json: @video
  end

  def destroy
    @video = Video.find_by!(video_find_params)
    @video.destroy!
    render json: @video
  end

  private

  def video_create_params
    {
      owner: params.require(:owner),
      title: params.require(:title),
      description: params.require(:description),
      sport: params.require(:sport)
    }
  end

  def video_find_params
    {
      id: params.require(:id)
    }
  end

  def video_update_params
    params.slice(:points, :views, :description, :url).permit!
  end
end
