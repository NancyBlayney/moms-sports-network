class SportsController < ApplicationController
	def index

	end


	def new
		@sport = Sport.new
	end

	def create
		@sport = Sport.create(sport_params)
		if @sport.save
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
	

	private

	def sport_params
		params.require(:sport).permit(:name, :description, :image)
	end


end
