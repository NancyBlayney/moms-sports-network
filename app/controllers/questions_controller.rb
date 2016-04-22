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



	private

	def question_params
		params.require(:question).permit(:quiz_id, :name, :body, :image)
	end


end
