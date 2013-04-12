class CartController < ApplicationController

  def show
    @cart = initialize_cart
    @products = []
    for cart_rec in @cart.cart_records
      @product = Product.find(cart_rec.product_id)
      @product[:cr]= cart_rec.id
      @products << @product
    end
  end

  
end
