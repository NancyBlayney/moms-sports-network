class AnswersController < ApplicationController
	def new
		@answer = Answer.new
	end

	def create
		@answer = Answer.create(answer_params)
		if @answer.save
			flash[:notice] = "success"
			redirect_to '/admin/new'
		else
			flash[:notice] = "failure"
			redirect_to '/admin/new'
		end
	end

	def edit
		if current_member != nil && current_member.admin == true
			@answer = Answer.find(params[:id])
		end
	end

	def update
		if current_member != nil && current_member.admin == true
			@answer = Answer.find(params[:id])
			@answer.update(answer_params)
			if @answer.save
				flash[:notice] = "Success"
				redirect_to '/admin/new'
			else
				flash[:notice] = "failure"
				redirect_to '/admin/new'
			end
		end
	end

	def destroy
	  @answer = Answer.find(params[:id])
	  if @answer.destroy
	  	flash[:notice] = "Successfully deleted."
	  	redirect_to admin_path
	  else
	  	flash[:notice] = "There was an error with your request."
	  	redirect_to admin_path
	  end
	end


	private

	def answer_params
		params.require(:answer).permit(:name, :body, :sport_id, :quiz_id, :question_id, :correct)
	end


end
