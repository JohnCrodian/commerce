class Product < ApplicationRecord
	has_many :product_adds
	has_many :carts, through: :product_adds
	has_many :wish_adds
	has_many :wishlists, through: :wish_adds
end

