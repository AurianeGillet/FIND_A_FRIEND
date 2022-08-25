# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

file = URI.open("https://thumbs.dreamstime.com/b/rock-guitarist-19113213.jpg")
miguel = Friend.new(first_name: "Miguel", last_name: "Figueiredo", phone_number: "+3513456367643", email_address: "guitarist4life@gmail.com", category: "Drunk Friend", description: "Hey there", age: 28, price: 6500, address: "Lisbon")
miguel.photo.attach(io: file, filename: "miguel.png", content_type: "image/png")
if miguel.save
  puts "friend created"
else
  puts miguel.errors
end
