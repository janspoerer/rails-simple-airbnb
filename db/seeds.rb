# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Seed: Destroying all existing flats"
Flat.destroy_all

puts "Seed: Creating dummy flats"
a = Flat.create!(name: "name1", address: "address1", description: "description1", price_per_night: 100, number_of_guests: 1)

a = Flat.create!(name: "name2", address: "address2", description: "description2", price_per_night: 100, number_of_guests: 2)

a = Flat.create!(name: "name3", address: "address3", description: "description3", price_per_night: 100, number_of_guests: 3)

a = Flat.create!(name: "name4", address: "address4", description: "description4", price_per_night: 100, number_of_guests: 4)

a = Flat.create!(name: "name5", address: "address5", description: "description5", price_per_night: 100, number_of_guests: 5)

puts "Seed: Dummy flats created!"
