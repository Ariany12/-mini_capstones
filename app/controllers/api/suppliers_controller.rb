class Api::SuppliersController < ApplicationController
  def index
    @suppliers = Supplier.all
    render 'index.json.jb'
  end

  def show
    id = params[:id]
    @suppliers = Supplier.find_by(id: id)
    render 'show.json.jb'
  end

  def create
    @suppliers = Supplier.new(
      name: params[:name],
      email: params[:email],
      phone_number: params[:phone_number]
     
  )
     @suppliers.save
    render 'show.json.jb'
  end

  def update
    id = params[:id]
    @supplier = Supplier.find_by(id: id)
    @supplier.update(
      @supplier.name = params[:name] || @supplier.name,
      @supplier.email =  params[:email] || @supplier.email,
      @supplier.phone_number =  params[:phone_number] || @supplier.phone_number
    )
    @supplier.save
    render 'show.json.jb'
  end

    # def destroy
    # id = params[:id]
    # @suppliers = Supplier.find_by(id: id)
    # @suppliers.delete
    #   render
    # end
end


