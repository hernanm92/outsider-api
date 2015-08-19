class SportsController < ApplicationController

def index
	@sports = Sport.first
    render json: @sports
end

end
