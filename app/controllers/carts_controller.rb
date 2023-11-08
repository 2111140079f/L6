class CartsController < ApplicationController
  def show
    #@cart = Cart.find(session[:cart_id])
    @cart_items = CartItem.all
  end
end
