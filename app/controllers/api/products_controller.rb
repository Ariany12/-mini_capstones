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
        image: params[:input_image]
    )
      @products.save
      render 'create.json.jb'
    end

    def update
      id = params[:id]
      @products = Product.find_by(id: id),
      @products.name =  params[:input_name],
      @products.price = params[:input_price],
      @products.image = params[:input_image]

      render 'update.json.jb'
    end
end
