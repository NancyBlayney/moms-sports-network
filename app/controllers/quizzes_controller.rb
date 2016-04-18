class QuizzesController < ApplicationController
	def index
		@sport = Sport.find(params[:id])
		@quiz = @sport.quiz
		@questions = @quiz.questions
	end


	def check
		puts "************************************************************************************"
		puts params.inspect
		@question = params[:question]
		@user_answer = params[:commit]
		puts @user_answer
		puts @question

		# @question = Question.find(params[:id])
		# @correctanswer = @question.correctanswer
		# @answer = 

		# checkAnswer()
    respond_to do |format|
      format.json 
    end
	end




end
