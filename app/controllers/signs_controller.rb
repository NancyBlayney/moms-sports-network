class SignsController < ApplicationController
	def new
		@sign = Sign.new
	end

	def create
		@sign = Sign.create(sign_params)
		if @sign.save
			flash[:notice] = "success"
			redirect_to '/admin/new'
		else
			flash[:notice] = "failure"
			redirect_to '/admin/new'
		end
	end

	def edit
		if current_member != nil && current_member.admin == true
			@sign = Sign.find(params[:id])
		end
	end

	def update
		if current_member != nil && current_member.admin == true
			@sport = Sport.find(params[:sign][:sport_id])
			@sign = Sign.find(params[:id])
			@sign.update(sign_params)
			if @sign.save
				flash[:notice] = "Success"
				redirect_to sport_path(@sport)
			else
				flash[:notice] = "failure"
				redirect_to :back
			end
		end
	end

	def destroy
	  @sign = Sign.find(params[:id])
	  if @sign.destroy
	  	flash[:notice] = "Successfully deleted."
	  	redirect_to admin_path
	  else
	  	flash[:notice] = "There was an error with your request."
	  	redirect_to admin_path
	  end
	end

	private

	def sign_params
		params.require(:sign).permit(:rule_id, :name, :gif, :sport_id)
	end



end