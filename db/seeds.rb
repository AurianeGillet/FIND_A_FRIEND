# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

Friend.destroy_all

file = URI.open("https://thumbs.dreamstime.com/b/rock-guitarist-19113213.jpg")
miguel = Friend.new(first_name: "Miguel", last_name: "Figueiredo", phone_number: "+3513456367643", email_address: "guitarist4life@gmail.com", category: "Drunk Friend", description: "Hey there", age: 28, price: 6500, address: "Lisbon")
miguel.photo.attach(io: file, filename: "miguel.png", content_type: "image/png")
miguel.save

file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/MansonB33920_8-14-17_%28cropped%29.jpg/220px-MansonB33920_8-14-17_%28cropped%29.jpg")
charles = Friend.new(first_name: "Charles", last_name: "Manson", phone_number: "+3513345678", email_address: "cm@gmail.com", category: "Old Soul Friend", description: "Hey there, I'm Charles if you need someone to hide a deadbody, call me !", age: 83, price: 200, address: "Los Angeles")
charles.photo.attach(io: file, filename: "manson.png", content_type: "image/png")
charles.save

file = URI.open("https://i.dailymail.co.uk/1s/2020/08/10/18/31787024-8612749-Defined_Cristiano_Ronaldo_showed_his_insane_washboard_abs_in_wat-a-43_1597082323339.jpg")
cristiano = Friend.new(first_name: "Cristiano", last_name: "Ronaldo", phone_number: "+35137777", email_address: "cr7@gmail.com", category: "Boat Friend", description: "Hey there, I'm Cristiano Ronaldo and i have few boats. You don't need to know anything else", age: 37, price: 777777, address: "Sir Matt Busby Way, Old Trafford, Stretford, Manchester M16 0RA, Royaume-Uni")
cristiano.photo.attach(io: file, filename: "cristiano.png", content_type: "image/png")
cristiano.save

file = URI.open("https://sm.ign.com/ign_br/screenshot/default/jack-sparrow-piratas-caribe-johnny-depp_s4yd.jpg")
jack = Friend.new(first_name: "Jack", last_name: "Sparrow", phone_number: "+3510000001", email_address: "JS@gmail.com", category: "Party Animal Friend", description: "Hey there, I'm Jack Sparrow. ready for partying ?", age: 46, price: 55, address: "La Havane")
jack.photo.attach(io: file, filename: "jack.png", content_type: "image/png")

file = URI.open("https://c1.wallpaperflare.com/preview/59/334/402/girl-beer-people-woman.jpg")
elisa = Friend.new(first_name: "Elisa", last_name: "Daniels", phone_number: "+3555666777", email_address: "ed@gmail.com", category: "Drunk Friend", description: "Hey there, do you like drinking and not solving any of your problems ? call me !", age: 27, price: 26, address: "Bruxelles")
elisa.photo.attach(io: file, filename: "elisa.jpg", content_type: "image/jpg")
elisa.save

file = URI.open("https://i.pinimg.com/736x/46/28/88/462888ed433f4f6da20f3da981deb4ab.jpg")
dobby = Friend.new(first_name: "Dobby", last_name: "Malfoy", phone_number: "+330000000", email_address: "dobby@gmail.com", category: "Shy Friend", description: "Hey there, if you buy me a socket I belong to you. ", age: 22, price: 10, address: "London")
dobby.photo.attach(io: file, filename: "dobby.png", content_type: "image/png")
dobby.save

file = URI.open("https://uploads.metropoles.com/wp-content/uploads/2021/10/26165924/Floyd-Mayweather-1-600x400.jpg")
floyd = Friend.new(first_name: "Floyd", last_name: "Mayweather", phone_number: "+332345678", email_address: "money@gmail.com", category: "Fight Friend", description: "Hey there, do you need a fight partner ? Do not hesitate. ", age: 45, price: 10000, address: "New York")
floyd.photo.attach(io: file, filename: "floyd.png", content_type: "image/png")
floyd.save

file = URI.open("https://cdn.bioalaune.com/img/article/thumb/900x500/35196-pourquoi_cuisiner_rend_heureux.jpg")
caroline = Friend.new(first_name: "Caroline", last_name: "Bocuse", phone_number: "+35456783", email_address: "cooking@gmail.com", category: "Cooker Friend", description: "Hey there, do you want to learn how to cook with me ?", age: 31, price: 45, address: "Rome")
caroline.photo.attach(io: file, filename: "caroline.png", content_type: "image/png")
caroline.save

file = URI.open("http://images.huffingtonpost.com/2016-04-13-1460580411-772540-31needfordrama.w529.h352.jpg")
guillaume = Friend.new(first_name: "Guillaume", last_name: "Durant", phone_number: "+3513467545", email_address: "guillaume@gmail.com", category: "Drama Friend", description: "Hey, do you need someone to support you during your drama crisis ? Book Me !", age: 38, price: 32, address: "Moscou")
guillaume.photo.attach(io: file, filename: "guillaume.png", content_type: "image/png")
guillaume.save
