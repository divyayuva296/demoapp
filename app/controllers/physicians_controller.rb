class PhysiciansController < ApplicationController
	def index
		@physicians = Physician.all
	end

	def new
		@physician = Physician.new
	end

	def create
		@physiscian = Physician.new(physician_params)
		if @physiscian.save
			redirect_to physicians_path
		else
			render 'new'
		end
	end

	def show
		@physician = Physician.find(params[:id])
	end

	def edit
		@physician = Physician.find(params[:id])
	end

	def update
		@physicaian = Physician.find(params[:id])
		if @physician.update(physician_params)
			redirect_to physicians_path
		else
			render 'edit'
		end
	end

	def destroy
		@physician = Physician.find(params[:id])
		@physician.destroy
		redirect_to physicians_path
	end

	private
	def physician_params
		params.require(:physician).permit(:name)
		
	end
end
