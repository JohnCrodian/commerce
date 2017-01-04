class RemoveColumns < ActiveRecord::Migration[5.0]
  def self.up
  	remove_column :wishlists, :product_id
  	remove_column :carts, :product_id
  end
end
