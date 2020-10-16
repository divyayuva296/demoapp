class Supplier < ApplicationRecord
	has_one :account, dependent: :destroy
	has_one :account_history , through: :account
	accepts_nested_attributes_for :account, reject_if: :all_blank, allow_destroy: true
end
