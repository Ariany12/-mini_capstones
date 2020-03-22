class Api::ProductsController < ApplicationController
    
  def index

  #     @products = Product.where("name LIKE ?", "%#{params[:search]}%")
  #     if params[:discount] == "true"
  #       @products = @products.where("price < 10")
  #     end
  #     if  params[:sort] && params[:sort_order] 
  #         @products = @products.order(params[:sort] => params[:sort_order])
  #     else 
  #         @products = @products.order(:id)
  #     end
  #    render 'index.json.jb'
  # end

    #if current_user
      # @products = Product.all
    # else
    #   @products = []
    # end
    # render 'index.json.jb'



    category = Category.find_by(name: params[:search])
    @products = category.products
    render 'index.json.jb'
  end
  
    def  show
      id = params[:id]
      @products = Product.find_by(id: id)
      render 'show.json.jb'
    end

    def create
      @products = Product.new(
        name: params[:name],
        price: params[:price],
        #image_url: params[:image],
        description: params[:description]
    )
       @products.save

      if @products.save
        render 'show.json.jb'
      else
        render json: {errors: @products.errors.full_messages}, status: :unprocessable_entity
      end
    end

    def update
      id = params[:id]
      @products = Product.find_by(id: id)
      @products.name =  params[:name] || @products.name
      @products.price = params[:price] || @products.price
     # @products.image_url = params[:image_url] || @products.image_url
      if @products.save
        render 'show.json.jb'
      else
        render json: {errors: @products.errors.full_messages}, status: :unprocessable_entity
      end
    end

    def destroy
      @products = Product.find_by(id: params[:id])
      @products.destroy
      render json: {message: "Product has been removed"}
    end

end
