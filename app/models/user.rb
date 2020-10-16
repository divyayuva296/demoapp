class User < ApplicationRecord
	has_many :posts, dependent: :destroy
	has_many :comments, through: :posts, dependent: :delete_all
	has_many :likes, through: :posts, dependent: :delete_all
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    has_many :details
    has_many :informations
end
