class PicturesController < ApplicationController
	def index
		@pictures = Picture.all
	end

	def new
		@picture = Picture.new
	end

	def create
		@picture = Picture.new(picture_params)
		if @picture.save
			redirect_to pictures_path
		else
			render 'new'
		end
	end

	private
	def picture_params
		params.require(:picture).permit(:name,:imageable_id,:imageable_type)
	end
end