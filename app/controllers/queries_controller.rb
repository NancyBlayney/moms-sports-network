class QueriesController < ApplicationController
	def new
		@query = Query.new
	end

	def create
		@query = Query.create(query_params)
		if @query.save
			redirect_to forum_path
		else
			flash[:notice] = "There was an error submitting your question."
			redirect_to forum_path
		end
	end

	def show
		@query = Query.find(params[:id])
		@comments = @query.comments
	end


	private

	def query_params
		params.require(:query).permit(:user_id, :title, :body, :sport_id, :approved)
	end




end
