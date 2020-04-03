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
    @user = User.all
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
      @product = Product.find_by (id: params[:id])
      render "edit.html.erb"
    end

    def update
      @product = Product.find_by (id: params[:id])
      @product.update(
        name: params[:name],
        price: params[:price],
        subscription: params[:subscription],
        supppier_id: params[:supppier_id]
      )
  
      redirect_to "/products/#(@product.id}"
    end

    def destroy
      @product = Product.find_by (id: params[:id])
      @product.destroy
      redirect_to "/products"
    end
end
 