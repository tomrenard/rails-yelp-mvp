# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

categories = ["chinese", "italian", "japanese", "french", "belgian"]

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating some restaurants..."
10.times do
  restaurant = Restaurant.create(
    name: Faker::Company.name,
    address: Faker::Address.street_address,
    category: categories.sample
    )
  puts "Restaurant with id #{restaurant.id} was created"

end

puts "Created #{Restaurant.count} restaurants"
