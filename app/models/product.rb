class Product < ApplicationRecord

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: {greater_than: 0}
  validates :price, numericality: {smaller_than: 10000}
  validates :description, presence: true
  validates :description, length: { in: 3..500}


  def is_discounted?
    price < 10
  end

  def tax
    tax_rate = 0.09
    price * tax_rate
  end

  def full_price
    price + tax
  end
end

