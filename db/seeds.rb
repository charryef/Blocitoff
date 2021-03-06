# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

5.times do
  User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email ,
    password: Faker::Internet.password(10, 20)
  )
end

users = User.all

15.times do
  Item.create!(
    user: users.sample,
    name: Faker::Lorem.sentence(3)
  )
end

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Item.count} to-do items created"
