class Physician < ApplicationRecord
	has_many :appointments
	has_many :patients, through: :appointments
	 # accepts_nested_attributes_for :patients
  # accepts_nested_attributes_for :appointments
end
