class RulesController < ApplicationController
	def new
		@rule = Rule.new
	end

	def create
		@rule = Rule.create(rule_params)
		if @rule.save
			flash[:notice] = "success"
			redirect_to admin_path
		else
			flash[:notice] = "failure"
			redirect_to admin_path
		end
	end



	private

	def rule_params
		params.require(:rule).permit(:quiz_id, :name, :body, :image, :sport_id, :question_id, :correct)
	end



end
