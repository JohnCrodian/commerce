class Wishlist < ApplicationRecord
	has_many :wish_adds
	has_many :products, through: :wish_adds
	belongs_to :user
end
