class ProductsController < ApplicationController
  def index
    @products = Product.all
    render 'index.html.erb'
  end

  def show
    @product = Product.find_by(id: params[:id])
    render 'show.html.erb'
  end
  
  def new
  render 'new.html.erb'
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      supppier_id: params[:supppier_id]
    )

    @product.save
    #render 'show.html.erb'
    redirect_to "/product/#{@product.id}"
    end
    
    def edit
      render "edit.html.erb"
    end

    def update
      render 
    end
end
 