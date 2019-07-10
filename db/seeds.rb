# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Flat.destroy_all

puts 'Creating restaurants...'
flats_attributes = [
  {
    name: 'Light & Spacious Garden Flat London',
    address: '10 Clifton Gardens London W9 1DT',
    description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
    price_per_night: 75,
    number_of_guests: 3
  },
  {
    name: 'Hip & Convienent Apartment New York',
    address: '8104 Hamilton Spring Road',
    description: 'Great location in the city, everything is close by',
    price_per_night: 50,
    number_of_guests: 2
  },
  {
    name: 'Manuel House',
    address: 'Where Manuel Lives',
    description: 'Manuel lives here',
    price_per_night: 1000,
    number_of_guests: 1
  },
  {
    name: 'OHOI',
    address: 'YES',
    description: 'Workshare, the best in oslo',
    price_per_night: 1000,
    number_of_guests: 150
  },
  {
    name: 'Hyrule Castle',
    address: 'Center of Hyrule',
    description: 'Large gothic castle in the center with Hyrule with only a slight mold problem',
    price_per_night: 100_00,
    number_of_guests: 1000
  }
]

Flat.create!(flats_attributes)
puts 'Finished!'
