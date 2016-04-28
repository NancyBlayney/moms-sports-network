class AdminController < ApplicationController

	def index
		if current_member != nil && current_member.admin == true
			@sports = Sport.all
			@quizzes = Quiz.all 
			@questions = Question.all 
			@answers = Answer.all 
			@rules = Rule.all
			@gears = Gear.all 
			@garbs = Garb.all 
			@signs = Sign.all
		else
			redirect_to root_path
		end
	end


	def new
		if current_member != nil && current_member.admin == true
			@sport = Sport.new
			@quiz = Quiz.new
			@question = Question.new
			@answer = Answer.new
			@rule = Rule.new
			@gear = Gear.new
			@garb = Garb.new
			@sign = Sign.new
		else
			redirect_to root_path
		end
	end

	def sport
		if current_member != nil && current_member.admin == true
			@sport = Sport.find(params[:id])
			@rules = @sport.rules
			@garbs = @sport.garbs
			@gears = @sport.gears
			if @sport.quiz != nil
				@quiz = @sport.quiz
				@questions = @quiz.questions
			end
		else
			redirect_to root_path
		end
	end

	def forum
		if current_member != nil && current_member.admin == true
			@queries = Query.all
			@comments = Comment.all
			@comment = Comment.new
		else
			redirect_to root_path
		end
	end


end


