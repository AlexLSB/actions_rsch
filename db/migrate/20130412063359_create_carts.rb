class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.string :cart_token
      t.integer :product_id

      t.timestamps
    end
  end
end
