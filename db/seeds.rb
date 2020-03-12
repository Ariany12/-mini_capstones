
products = Product.new({name: "calculater", price: 25, image_url: "none", description: "zero"})
products.save

10.times do
Product.create!(name: Faker::Food.fruits, price: Faker::Alphanumeric.alphanumeric(number: 10, min_alpha: 3, min_numeric: 3), image_url: "none", description: "zero")
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
