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
        image: params[:input_image],
    )
      @products.save
      render 'create.json.jb'
    end

    def update
      @items = Product.last
      render 'update.json.jb'
    end
end
