
# products = Product.new({name: "calculater", price: 25, image_url: "none", description: "zero"})
# products.save

# 10.times do
# Product.create!(name: Faker::Food.fruits, price: Faker::Number.within(range: 1..10), description: "the best products you can have", supplier_id: Faker::Number.within(range: 1..3))
# end
# products = Product.where(supplier_id: nil)

# products.each do |product|
#   supplier_id = Supplier.all.sample.id
#   product.supplier_id = supplier_id
#   product.save
# end
  # This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do 
CartedProduct.create!(status: "carted", user_id: Faker::Number.within(range: 1..4), product_id: Faker::Number.within(range: 48..57), quantity: Faker::Number.within(range: 1..10))
end


CartedProduct.create!(status: "removed", user_id: 1, product_id: Faker::Number.within(range: 48..57), quantity: 1,)
CartedProduct.create!(status: "removed", user_id: 2, product_id: Faker::Number.within(range: 48..57), quantity: 2,)
CartedProduct.create!(status: "removed", user_id: 3, product_id: Faker::Number.within(range: 48..57 ), quantity: 4,)
