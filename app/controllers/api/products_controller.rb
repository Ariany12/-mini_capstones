class Api::ProductsController < ApplicationController
    def index
      @products = Product.all
      render 'index.json.jb'
    end

    def  show
      id = params[:id]
      @products = Product.find_by(id: id)
      render 'show.json.jb'
    end

    def create
      @products = Product.new(
        name: params[:input_name],
        price: params[:input_price],
        image_url: params[:input_image],
        description: params[:input_description]
    )
      @products.save
      render 'show.json.jb'
    end

    def update
      id = params[:id]
      @products = Product.find_by(id: id)
      @products.name =  params[:input_name] || @products.name
      @products.price = params[:input_price] || @products.price
      @products.image_url = params[:input_image_url] || @products.image_url
      @products.save
      render 'show.json.jb'
    end

    def destroy
      @products = Product.find_by(id: params[:id])
      @products.destroy
      render json: {message: "Product has been removed"}
    end

end
