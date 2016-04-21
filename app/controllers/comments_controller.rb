class CommentsController < ApplicationController
	def new
		@comment = Comment.new
	end

	def create
		@comment = Comment.create(comment_params)
		if @comment.save
			redirect_to forum_path
		else
			flash[:notice] = "There was an error submitting your comment."
			redirect_to forum_path
		end
	end

	private

	def comment_params
		params.require(:comment).permit(:user_id, :admin_user_id, :query_id, :body, :post_id)
	end

end
