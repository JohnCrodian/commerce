class Cart < ApplicationRecord
	has_many :product_adds
	has_many :products, through: :product_adds
	belongs_to :user
end
