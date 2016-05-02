class QueriesController < ApplicationController
	def new
		@member = current_member
		@query = Query.new
	end

	def create
		@member = current_member
		@query = Query.create(query_params)
		if @query.save
			redirect_to forum_path
		else
			flash[:notice] = "There was an error submitting your question."
			redirect_to forum_path
		end
	end

	def show
		@member = current_member
		@query = Query.find(params[:id])
		@comment = @query.comments.new
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
				redirect_to '/admin'
			else
				flash[:notice] = "failure"
				redirect_to '/admin/new'
			end
		end
	end

	# def destroy
	#   @query = Query.find(params[:id])
	#   if @query.destroy
	#   	flash[:notice] = "Successfully deleted."
	#   	redirect_to admin_path
	#   else
	#   	flash[:notice] = "There was an error with your request."
	#   	redirect_to admin_path
	#   end
	# end

	private

	def query_params
		params.require(:query).permit(:member_id, :title, :body, :sport_id, :approved)
	end




end
