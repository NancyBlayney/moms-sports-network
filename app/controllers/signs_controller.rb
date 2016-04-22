class SignsController < ApplicationController
	def new
		@sign = Sign.new
	end

	def create
		@sign = Sign.create(sign_params)
		if @sign.save
			flash[:notice] = "success"
			redirect_to admin_path
		else
			flash[:notice] = "failure"
			redirect_to admin_path
		end
	end



	private

	def sign_params
		params.require(:sign).permit(:rule_id, :name, :gif, :sport_id)
	end



end