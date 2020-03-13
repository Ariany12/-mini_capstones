class Api::ProductsController < ApplicationController
    def index

      if params[:search]
        @products = Product.where("name LIKE ?", "%#{params[:search]}")
      else
        @products = Product.all
      end
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
        image_url: params[:image],
        description: params[:description]
    )
      @products.save
      render 'show.json.jb'
    end

    def update
      id = params[:id]
      @products = Product.find_by(id: id)
      @products.name =  params[:name] || @products.name
      @products.price = params[:price] || @products.price
      @products.image_url = params[:image_url] || @products.image_url
      @products.save
      render 'show.json.jb'
    end

    def destroy
      @products = Product.find_by(id: params[:id])
      @products.destroy
      render json: {message: "Product has been removed"}
    end

end
