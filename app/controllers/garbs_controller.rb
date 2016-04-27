class GarbsController < ApplicationController

	def new
		@garb = Garb.new
	end

	def create
		@garb = Garb.create(garb_params)
		if @garb.save
			flash[:notice] = "success"
			redirect_to '/admin/new'
		else
			flash[:notice] = "failure"
			redirect_to '/admin/new'
		end
	end

	def edit
		if current_member != nil && current_member.admin == true
			@garb = Garb.find(params[:id])
		end
	end

	def update
		if current_member != nil && current_member.admin == true
			@garb = Garb.find(params[:id])
			@garb.update(garb_params)
			if @garb.save
				flash[:notice] = "Success"
				redirect_to sport_path
			else
				flash[:notice] = "failure"
				redirect_to :back
			end
		end
	end

	def destroy
	  @garb = Garb.find(params[:id])
	  if @garb.destroy
	  	flash[:notice] = "Successfully deleted."
	  	redirect_to admin_path
	  else
	  	flash[:notice] = "There was an error with your request."
	  	redirect_to admin_path
	  end
	end


	private

	def garb_params
		params.require(:garb).permit(:link, :title, :body, :sport_id)
	end




end
