class NewsController < ApplicationController
	def index
		@result = News.search
		# @sports = Sport.all
		# @sport = Sport.find_by_id(params[:id])
		
  #   if params[:amazon_search]
		#   @res = Amazonn.search(params[:amazon_search]) 
		# else
		
    # end
  end
end
