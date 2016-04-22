class QuestionsController < ApplicationController
	def new
		@question = Question.new
	end

	def create
		@question = Question.create(question_params)
		if @question.save
			flash[:notice] = "success"
			redirect_to admin_path
		else
			flash[:notice] = "failure"
			redirect_to admin_path
		end
	end



	private

	def question_params
		params.require(:question).permit(:quiz_id, :name, :body, :image)
	end


end
