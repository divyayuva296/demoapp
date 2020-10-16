class SuppliersController < ApplicationController
	def index
		@suppliers = Supplier.all
	end

	def new
		@supplier  = Supplier.new
		@supplier.build_account
	end

	def create
		@supplier = Supplier.new(supplier_params)
		
		# byebug
		if @supplier.save
			redirect_to suppliers_path
		else
			render 'new'
		end
	end

	def show
		@supplier = Supplier.find(params[:id])
	end

	def edit
		@supplier = Supplier.find(params[:id])
	end

	def update
		@supplier = Supplier.find(params[:id])

		if @supplier.update(supplier_params)
			redirect_to @supplier
		else
			render 'edit'
		end

	end

	def destroy
		@supplier = Supplier.find(params[:id])
		@supplier.destroy
		redirect_to suppliers_path
	end

	private
	def supplier_params
		params.require(:supplier).permit(:name, account_attributes: [:account_number])
	end
end
 