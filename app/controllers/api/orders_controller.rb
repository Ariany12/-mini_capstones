class Api::OrdersController < ApplicationController
    # def index
    #   if current_user
    #     @orders = Order.all
    #     #@orders = current_user.orders
    #   else
    #     @orders = []
    #   end
    #   render 'index.json.jb'
    # end

  def index 
    @orders = current_user.orders
    render 'index.json.jb'
  end

  def show
    @order = Order.find_by(id: params[:id])
    render 'show.json.jb'
  end

    # def  show
    #   id = params[:id]
    #   @products = Product.find_by(id: id)
    #   if current_user
    #     render 'show.json.jb'
    #   else
    #     render json: {message: 'acess denied'}
    #   end
    # end


  def create
    @carted_products = current_user.carted_products.where(status: 'carted')
    subtotal = 0 
    @carted_products.each do |carted_product|
      subtotal +=  carted_product.product.price * carted_product.quantity
  end  
      tax_rate = 0.1
      tax = subtotal * tax_rate
      total = subtotal + tax 
    
    @order = Order.new(
      user_id: current_user.id,
      subtotal: subtotal,
      tax: tax,
      total: total
    )

    @order.save
    render 'show.json.jb'
  end
end 

#       product = Product.find_by(id: params[:product_id])
#       subtotal = params[:quantity].to_i * product.price
#       tax_rate = 0.1
#       tax = subtotal * tax_rate
#       total = tax + subtotal
      
#       #product = Product.find_by(id: product_id)
#       #@product = product.price

#       @order = Order.new(
#         user_id: current_user.id,
#         product_id:  params[:product_id],
#         quantity: params[:quantity],
#         subtotal: subtotal,
#         tax: tax,
#         total: total
#     )
#       @order.save

#       if @order.save
#         render 'show.json.jb'
#       else
#         render json: {errors: @orders.errors.full_messages}, status: :unprocessable_entity
#       end

