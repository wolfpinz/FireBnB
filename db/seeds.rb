# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Flat.destroy_all
User.destroy_all

puts 'creating 3 flats'

User.create(
  first_name: 'Karl',
  last_name: 'Wagon',
  email: 'me@me.com',
  password: '123456',
  password_confirmation: '123456'
)

3.times do
  Flat.create(
    user: User.last,
    title: Faker::Movies::HarryPotter.location,
    city: Faker::Address.city,
    street: Faker::Address.street_address,
    price_per_night: rand(500...10_000),
    description: Faker::Food.description
  )
end

puts 'finished'
