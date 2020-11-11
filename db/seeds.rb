# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "italian", phone_number: "0125648956"}
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian", phone_number: "0125648956" }
pizza_north =  { name: "Pizza north", address: "25, bd des prés, London E1 6PQ", category: "japanese", phone_number: "+3325648956" }
crepes_east =  { name: "crepes East", address: "56, rue de quimper, London", category: "french", phone_number: "+4425648956" }
McDo =  { name: "Mc Donald", address: "41, av de NY, new york", category: "belgian", phone_number: "+555648956" }
grec =  { name: "grec", address: "av de Miconos, PAris", category: "chinese", phone_number: "0169698956" }

[ dishoom, pizza_east, pizza_north, crepes_east, McDo,grec ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"