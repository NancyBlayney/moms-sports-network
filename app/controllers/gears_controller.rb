class GearsController < ApplicationController
	def new
		@gear = Gear.new
	end

	def create
		@gear = Gear.create(gear_params)
		if @gear.save
			flash[:notice] = "success"
			redirect_to admin_path
		else
			flash[:notice] = "failure"
			redirect_to admin_path
		end
	end



	private

	def gear_params
		params.require(:gear).permit(:link, :title, :body, :sport_id)
	end



end
