# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
require 'faker'

puts "Cleaning database..."
Flat.destroy_all

puts "Creating flats..."
10.times do
  flat = Flat.new(
    name: Faker::Address.community,
    address: Faker::Address.street_address,
    description: Faker::Restaurant.description,
    price_per_night: rand(50...100),
    number_of_guests: rand(1..10)
  )
  flat.save!
end
puts "Finished!"
