# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'creating 3 flats'

3.times do
  Flat.create(
    user_id: 1,
    city: Faker::Address.city,
    street: Faker::Address.street_address,
    price_per_night: rand(500...10_000),
    description: Faker::Food.description
  )
end

puts 'finished'
