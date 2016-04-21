class ForumController < ApplicationController
	def index
		@query = Query.new
		@queries = Query.all
	end
end
