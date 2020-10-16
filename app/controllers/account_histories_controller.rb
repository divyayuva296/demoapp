class AccountHistoriesController < ApplicationController
	byebug
	def create
		@account = Account.find(params[:account_id])
	end

	private
	def account_history_params
		params.require(:account_history).permit(:credit_ratings,:account_id)
	end

end
