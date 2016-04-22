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
			redirect_to admin_path
		else
			flash[:notice] = "failure"
			redirect_to admin_path
		end
	end

	def edit
	end

	def update
	end

	# def check
	# 	puts "************************************************************************************"
	# 	puts params.inspect
	# 	@question = params[:question]
	# 	@user_answer = params[:commit]
	# 	puts @user_answer
	# 	puts @question

		# @question = Question.find(params[:id])
		# @correctanswer = @question.correctanswer
		# @answer = 

		# checkAnswer()
 #    respond_to do |format|
 #      format.json 
 #    end
	# end


	private

	def quiz_params
		params.require(:quiz).permit(:name, :sport_id)
	end



end
