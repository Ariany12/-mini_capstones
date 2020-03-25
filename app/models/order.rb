class Order < ApplicationRecord
  belongs_to :user 
  has_many :carted_products
  has_many :products, through: :carted_products
  
  #validates :product_id, presence: true
  #validates :quantity, presence: true

  # def subtotal
  #   product * quantity
  # end

  # def tax
  #   tax_rate = 0.1
  #   subtotal * tax_rate
  # end

  # def total
  #   subtotal + tax
  # end
 end