class SportsController < ApplicationController
	def index

	end

	def show
		@sports = Sport.all
		@sport = Sport.find(params[:id])
		@rules = @sport.rules
		@garbs = @sport.garbs
		@gears = @sport.gears
	end
	
end