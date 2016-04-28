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
		if @query.approved == true
			@comments = @query.comments
		else 
			redirect_to forum_path
		end
	end

	def edit
		if current_member != nil && current_member.admin == true
			@query = Query.find(params[:id])
		end
	end

	def update
		if current_member != nil && current_member.admin == true
			@query = Query.find(params[:id])
			@query.update(query_params)
			if @query.save
				flash[:notice] = "Success"
				redirect_to '/admin/new'
			else
				flash[:notice] = "failure"
				redirect_to '/admin/new'
			end
		end
	end


	private

	def query_params
		params.require(:query).permit(:user_id, :title, :body, :sport_id, :approved)
	end




end
