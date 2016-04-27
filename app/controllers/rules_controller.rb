class RulesController < ApplicationController
	def new
		@rule = Rule.new
	end

	def create
		@rule = Rule.create(rule_params)
		if @rule.save
			flash[:notice] = "success"
			redirect_to '/admin/new'
		else
			flash[:notice] = "failure"
			redirect_to '/admin/new'
		end
	end

	def edit
		if current_member != nil && current_member.admin == true
			@rule = Rule.find(params[:id])
		end
	end

	def update
		if current_member != nil && current_member.admin == true
			@rule = Rule.find(params[:id])
			@rule.update(rule_params)
			if @rule.save
				flash[:notice] = "Success"
				redirect_to sport_path
			else
				flash[:notice] = "failure"
				redirect_to :back
			end
		end
	end

	def destroy
	  @rule = Rule.find(params[:id])
	  if @rule.destroy
	  	flash[:notice] = "Successfully deleted."
	  	redirect_to admin_path
	  else
	  	flash[:notice] = "There was an error with your request."
	  	redirect_to admin_path
	  end
	end



	private

	def rule_params
		params.require(:rule).permit(:quiz_id, :name, :body, :image, :sport_id, :question_id, :correct)
	end



end
