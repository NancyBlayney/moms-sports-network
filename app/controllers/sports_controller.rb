class SportsController < ApplicationController
	def index

	end

	def show
		@sports = Sport.all
		@sport = Sport.find(params[:id])
	end
	
end
