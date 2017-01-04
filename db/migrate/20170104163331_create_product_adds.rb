class CreateProductAdds < ActiveRecord::Migration[5.0]
  def change
    create_table :product_adds do |t|
      t.integer :cart_id
      t.integer :product_id

      t.timestamps
    end
  end
end
