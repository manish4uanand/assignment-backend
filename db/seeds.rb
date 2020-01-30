# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

products = []

5000.times do
  item = Product.new
  item.name = Faker::Commerce.product_name
  item.price = Faker::Commerce.price(range: 10..1000.0)
  item.material = Faker::Commerce.material
  item.category = Faker::Commerce.department
  item.color = Faker::Commerce.color
  products << item
end

Product.import products
