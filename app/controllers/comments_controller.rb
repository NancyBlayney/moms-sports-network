class CommentsController < ApplicationController
	def new
		@query = Query.find(params[:id])
		@comment = Comment.new
	end

	def create
		@member = current_member
		@comment = Comment.create(comment_params)
		@comment.member = @member
		if @comment.save
			redirect_to :back
		else
			flash[:notice] = "There was an error submitting your comment."
			redirect_to forum_path
		end
	end

	# def destroy
	#   @comment = Comment.find(params[:comment_id])
	#   if @comment.destroy
	#   	flash[:notice] = "Successfully deleted."
	#   	redirect_to admin_path
	#   else
	#   	flash[:notice] = "There was an error with your request."
	#   	redirect_to admin_path
	#   end
	# end

	private

	def comment_params
		params.require(:comment).permit(:member_id, :query_id, :body, :post_id)
	end

end


