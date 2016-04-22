class GarbsController < ApplicationController

	def new
		@garb = Garb.new
	end

	def create
		@garb = Garb.create(garb_params)
		if @garb.save
			flash[:notice] = "success"
			redirect_to admin_path
		else
			flash[:notice] = "failure"
			redirect_to admin_path
		end
	end



	private

	def garb_params
		params.require(:garb).permit(:link, :title, :body, :sport_id)
	end




end
