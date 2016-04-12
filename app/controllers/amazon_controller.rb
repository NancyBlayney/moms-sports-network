class AmazonController < ApplicationController
	def index
    if params[:amazon_search]
		  @res = Amazonn.search(params[:amazon_search])                                    
    end
  end
end
