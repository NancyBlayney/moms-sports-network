class HomeController < ApplicationController
	
	def index
		@sports = Sport.all
	end

	def about
	end

	def sports
	end

	def news
	end

end