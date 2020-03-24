class Api::CartedProductsController < ApplicationController
  
  def index 
    @carted_products = CartedProduct.all
  render "index.json.jb"
  end 


  def create
    @carted_product = CartedProduct.new(
        status: params[:status],
        user_id: params[:user_id],
        product_id: params[:product_id],
        quantity: params[:quantity],
        order_id: params[:order_id]
    )
       @carted_product.save

      #if current_user
        @carted_product.save
        render 'show.json.jb'
      end
end
