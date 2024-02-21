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

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "indian"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "belgian"}
rapsa =  {name: "Rapsa", address: "100-102 Hoxton St, London N1 6SG", category: "phillipino"}
the_ginger_pig_cafe =  {name: "The Ginger Pig", address: "231 Hoxton St, London N1 5LG", category: "french"}
dal_fiorentino = {name: "Dal Fiorentio", address: "74 Hoxton St, London N1 6LP", category: "italian"}

[dishoom, pizza_east, rapsa, the_ginger_pig_cafe, dal_fiorentino].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
