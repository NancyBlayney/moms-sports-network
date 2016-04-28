class CommentsController < ApplicationController
	def new
		@query = Query.find(params[:id])
		@comment = Comment.new
	end

	def create
		@query = Query.find(params[:id])
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


# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')