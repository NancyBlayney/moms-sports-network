class NewsController < ApplicationController
	def index
		@result = News.search
  end
end
