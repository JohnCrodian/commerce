class User < ApplicationRecord


	
	has_one :wishlist, dependent: :destroy
	has_one :cart, dependent: :destroy 

	validates :email, presence: true
	validates :password, presence: true, confirmation: true
	validates :password_confirmation, presence: true


end

 