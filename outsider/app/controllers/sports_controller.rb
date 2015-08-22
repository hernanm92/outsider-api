class SportsController < ApplicationController

  protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }

  def index
    @sports = Sport.all
    render json: @sports
  end

  def show
    @sport = Sport.find_by!(sport_find_params)
    render json: @sport
  end

  def create
    @sport = Sport.create!(sport_create_params)
    render json: @sport
  end

  private

  def sport_create_params
    {
      name: params.require(:name),
      description: params.require(:description)
    }
  end

  def sport_find_params
    {
      name: params.require(:id)
    }
  end

end
