#encoding: utf-8
class ApplicationController < ActionController::Base
  protect_from_forgery


  # Force signout to prevent CSRF attacks
  def handle_unverified_request
    sign_out
    super
  end

  def initialize_cart
    if session[:cart_id]
      @cart = Cart.find(session[:cart_id])
    end
    unless @cart
    	@cart = Cart.create
    	session[:cart_id] = @cart.id
    end 
    @cart
  end

end
