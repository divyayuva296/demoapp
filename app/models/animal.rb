class Animal < ApplicationRecord
	validates :name, presence: true
	validates :password ,length: {maximum: 6}
end
