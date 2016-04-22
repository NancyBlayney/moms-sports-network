class QuizzesController < ApplicationController
	def index
		@sport = Sport.find(params[:id])
		@quiz = @sport.quiz
		@questions = @quiz.questions
	end

	def new
		@quiz = Quiz.new
	end

	def create
		@quiz = Quiz.create(quiz_params)
		if @quiz.save
			flash[:notice] = "success"
			redirect_to '/admin/new'
		else
			flash[:notice] = "failure"
			redirect_to '/admin/new'
		end
	end


	private

	def quiz_params
		params.require(:quiz).permit(:name, :sport_id)
	end



end
