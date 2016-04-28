class HomeController < ApplicationController
	
	def index
		@sports = Sport.all
	end

	def about
	end

	def sports
		@sports = Sport.all
	end


end