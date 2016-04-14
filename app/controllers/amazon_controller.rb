class AmazonController < ApplicationController
	def index
		@sports = Sport.all
		@sport = Sport.find_by_id(params[:id])
		@positions = Position.all
		
    if params[:amazon_search]
		  @res = Amazonn.search(params[:amazon_search]) 
		else
			
    end
  end
end
