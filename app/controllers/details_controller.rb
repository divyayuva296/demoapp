class DetailsController < ApplicationController
	before_action :set_user, only: [:show,:edit,:destroy]
	def index
		@details = Detail.all
	end

	def new
		# @detail = Detail.new
		# @detail.user_id = current_user.id
		@detail = current_user.details.new
	end

	def show
		@detail = Detail.find(params[:id])
	end

	def edit
		# @details = @detail.hobbies
		# byebug
		@detail = Detail.find(params[:id])
	end

	def create
	
		@detail = current_user.details.create(detail_params)
		# @detail.mobile = params[:detail][:mobile]
	byebug
		if @detail.save
			redirect_to details_path
		else
			render 'new'
		end
	end

	def update
		@detail = Detail.find(params[:id])
		if @detail.update(detail_params)
			redirect_to details_path
		else
			render 'edit'
		end
	end

	def destroy
		@detail = Detail.find(params[:id])
		@detail.destroy
		redirect_to details_path
	end

	private

	def detail_params
		params.require(:detail).permit(:name, :user_id, :gender,:range,:city_id,:number,:birthday,:graduation,:month,:week,:email,:message,:mobile,hobbies: [])
	end
# :url,:color,:time,:number,:range
	def set_user
		@user = current_user
		# byebug
	end

end
