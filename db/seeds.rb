# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', category: 'chinese', phone_number: '03 25 45 78 95' }
pizza_east = { name: 'Pizza East', address: '56A Shoreditch High St', category: 'italian', phone_number: '06 45 48 78 52 12' }
la_famille = { name: 'La Famille', address: 'Lille', category: 'japanese', phone_number: '03 52 45 15 78' }
bomborra = { name: 'Bombora', address: 'Lommes', category: 'french', phone_number: '05 24 15 25 48' }
pick_it_up = { name: 'Pick It Up', address: 'La Madeleine', category: 'belgian', phone_number: '06 56 85 45 75' }

[dishoom, pizza_east, la_famille, bomborra, pick_it_up].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts "#{Restaurant.count} restaurants create"
puts 'Finished!'
