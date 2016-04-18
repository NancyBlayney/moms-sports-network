class SportsController < ApplicationController
	def index

	end

	def show
		@sports = Sport.all
		@sport = Sport.find(params[:id])
		@rules = @sport.rules
		@garbs = @sport.garbs
		@gears = @sport.gears
		if @sport.quiz != nil
			@quiz = @sport.quiz
			@questions = @quiz.questions
			@question = Question.find(params[:id])
			@answers = @question.answers
			@correctanswer = @question.correctanswer	
		end
	end
	


end
