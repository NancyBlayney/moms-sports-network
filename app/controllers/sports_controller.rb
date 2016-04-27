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
			redirect_to '/admin/new'
		else
			flash[:notice] = "failure"
			redirect_to '/admin/new'
		end
	end

	def edit
		if current_member != nil && current_member.admin == true
			@sport = Sport.find(params[:id])
		end
	end

	def update
		if current_member != nil && current_member.admin == true
			@sport = Sport.find(params[:id])
			@sport.update(sport_params)
			if @sport.save
				flash[:notice] = "Success"
				redirect_to sport_path
			else
				flash[:notice] = "failure"
				redirect_to :back
			end
		end
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
		end
	end
	
	def destroy
	  @sport = Sport.find(params[:id])
	  if @sport.destroy
	  	flash[:notice] = "Successfully deleted."
	  	redirect_to admin_path
	  else
	  	flash[:notice] = "There was an error with your request."
	  	redirect_to admin_path
	  end
	end



	private

	def sport_params
		params.require(:sport).permit(:name, :description, :image)
	end


end
