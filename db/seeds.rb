# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

puts "Cleansing band space database"
BandSpace.destroy_all
User.destroy_all

20.times do
  User.create!(
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    username: Faker::Internet.username,
    photo_url: "https://images.unsplash.com/photo-1513584684374-8bab748fbf90?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2065&q=80"
  )
  puts "User created..."
end

puts "Seeding band spaces..."
users = User.all
users.each do |user|
  BandSpace.create!(
    name: "#{Faker::Artist.name}'s space",
    address: Faker::Address.full_address,
    description: Faker::Lorem.sentence(word_count: 10),
    photo_url: "https://images.unsplash.com/photo-1513584684374-8bab748fbf90?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2065&q=80",
    capacity: rand(1..10),
    price: rand(20..50),
    user_id: user.id
  )
  puts "Space created..."
end

puts "Done"
