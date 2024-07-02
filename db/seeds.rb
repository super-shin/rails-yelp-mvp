# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."

Restaurant.destroy_all

puts "Creating Restaurants..."

dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', phone_number: '545-6598', category: 'french' }
pizza_east = { name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', phone_number: '440-6598', category: 'french' }
sukiya = { name: 'Sukiya', address: '14 Minato, Tokyo, Japan 1414-0215', phone_number: '345-6538', category: 'japanese' }
kfc = { name: 'KFC', address: '14 Shibuya, Tokyo, Japan 1414-0515', phone_number: '145-12308', category: 'japanese' }
mcdo = { name: 'McDonalds', address: '14 Ebara, Tokyo, Japan 1414-0655', phone_number: '245-6598', category: 'japanese' }

[dishoom, pizza_east, sukiya, kfc, mcdo].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts "Finished!"
