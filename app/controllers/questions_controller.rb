class QuestionsController < ApplicationController
	def new
		@question = Question.new
	end

	def create
		@question = Question.create(question_params)
		if @question.save
			flash[:notice] = "success"
			redirect_to '/admin/new'
		else
			flash[:notice] = "failure"
			redirect_to '/admin/new'
		end
	end

	def edit
		if current_member != nil && current_member.admin == true
			@question = Question.find(params[:id])
		end
	end

	def update
		if current_member != nil && current_member.admin == true
			@question = Question.find(params[:id])
			@question.update(question_params)
			if @question.save
				flash[:notice] = "Success"
				redirect_to '/admin/new'
			else
				flash[:notice] = "failure"
				redirect_to '/admin/new'
			end
		end
	end

	def destroy
	  @question = Question.find(params[:id])
	  if @question.destroy
	  	flash[:notice] = "Successfully deleted."
	  	redirect_to admin_path
	  else
	  	flash[:notice] = "There was an error with your request."
	  	redirect_to admin_path
	  end
	end


	private

	def question_params
		params.require(:question).permit(:quiz_id, :name, :body, :image)
	end


end
