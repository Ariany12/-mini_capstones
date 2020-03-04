
products = Product.new({name: "calculater", price: 25, image_url: "none", description: "zero"})
products.save

products = Product.new({name: "iphone_6", price: 250, image_url: "none", description: "zero"})
products.save

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
