class InformationsController < ApplicationController
	def new
		@user = current_user
		@information = @user.informations.new
	end

	def create
		@information = current_user.informations.create
		if @imformation.save
			redirect_to informations_path(@user)
		else
			render 'new'
		end
	end
	
	private
	def information_params
		params.require(:information).permit(:name,:user_id)
	end
end
