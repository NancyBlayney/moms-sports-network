class AnswersController < ApplicationController
	def new
		@answer = Answer.new
	end

	def create
		@answer = Answer.create(answer_params)
		if @answer.save
			flash[:notice] = "success"
			redirect_to admin_path
		else
			flash[:notice] = "failure"
			redirect_to admin_path
		end
	end



	private

	def answer_params
		params.require(:answer).permit(:name, :body, :sport_id)
	end


end
