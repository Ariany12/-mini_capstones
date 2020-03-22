class Product < ApplicationRecord
  belongs_to :supplier
  has_many :images
  has_many :orders
  has_many :CategoryProducts 
  has_many :categories, through: :CategoryProducts 


  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: {greater_than: 0}
  validates :price, numericality: {smaller_than: 10000}
  validates :description, presence: true
  validates :description, length: { in: 3..500}

  belongs_to :supplier
  has_many :images

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
  