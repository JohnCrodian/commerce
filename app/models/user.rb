class User < ApplicationRecord

 after_save :create_users_cart
	
	has_one :wishlist, dependent: :destroy
	has_one :cart, dependent: :destroy 

	validates :email, presence: true
	validates :password, presence: true, confirmation: true
	validates :password_confirmation, presence: true

def create_users_cart
    Cart.create(user_id: @user.id)
  end

end

 