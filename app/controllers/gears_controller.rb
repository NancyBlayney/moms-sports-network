class GearsController < ApplicationController
	def new
		@gear = Gear.new
	end

	def create
		@gear = Gear.create(gear_params)
		if @gear.save
			flash[:notice] = "success"
			redirect_to '/admin/new'
		else
			flash[:notice] = "failure"
			redirect_to '/admin/new'
		end
	end

	def edit
		if current_member != nil && current_member.admin == true
			@gear = Gear.find(params[:id])
		end
	end

	def update
		if current_member != nil && current_member.admin == true
			@sport = Sport.find(params[:gear][:sport_id])
			@gear = Gear.find(params[:id])
			@gear.update(gear_params)
			if @gear.save
				flash[:notice] = "Success"
				redirect_to sport_path(@sport)
			else
				flash[:notice] = "failure"
				redirect_to :back
			end
		end
	end

	def destroy
	  @gear = Gear.find(params[:id])
	  if @gear.destroy
	  	flash[:notice] = "Successfully deleted."
	  	redirect_to admin_path
	  else
	  	flash[:notice] = "There was an error with your request."
	  	redirect_to admin_path
	  end
	end

	private

	def gear_params
		params.require(:gear).permit(:link, :title, :body, :sport_id)
	end



end
