class AnimalsController < ApplicationController
	def index
		@animals = Animal.all
	end

	def new
		@animal = Animal.new
	end

	def create
		@animal = Animal.create(animal_params)
		byebug
		if @animal.save
			redirect_to animals_path
		else
			render 'new'
		end
	end

	private
	def animal_params
		params.require(:animal).permit(:name,:password,:desctription,:accepts,:date,:remember_me,:age)
	end
end
