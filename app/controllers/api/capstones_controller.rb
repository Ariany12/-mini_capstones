class Api::CapstonesController < ApplicationController

def pp
  @products = Product.first
  render 'pink.json.jb'
end

def pb
  @products = Product.second
  render 'black.json.jb'
end

def eg
  @products = Product.last
  render 'green.json.jb'
end

end
