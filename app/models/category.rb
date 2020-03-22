class Category < ApplicationRecord
  has_many :CategoryProducts
  has_many :products, through: :CategoryProducts 
end
