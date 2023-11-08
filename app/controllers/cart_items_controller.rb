class CartItemsController < ApplicationController
  def new
    # if params[:product_id].present?
    #   @product = Product.find(params[:product_id])
    #   @cart_item = CartItem.new
    # else
    #   redirect_to products_path
    # end
    # @product = Product.find(params[:product_id])
    @cart_item = CartItem.new
  end

  def create
    @cart_item = CartItem.new(quantity: params[:quantity], product_id: params[:id], cart_id: current_cart)
    @cart_item.save
    redirect_to products_path
    # else
    #   render root_path
    # end
  end

  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy
    redirect_to carts_path
  end

  private

  def cart_item_params
    params.require(:cart_item).permit(:qty, :product_id)
  end
end
