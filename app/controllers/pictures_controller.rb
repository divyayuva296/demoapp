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

	def immageable
		if params[:emplyee_id] 
			@immageable = Employee.find(params[:employee_id])
		elsif params[:product_id]
			@immageable = Product.find(params[:product_id])
		else
			puts "nothing"
		end
	end
			
end
