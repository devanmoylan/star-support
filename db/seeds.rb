# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email


password = 'pass1234'

devan = User.create(
            name: "Devan Moylan",
            email: "dmmoylan@gmail.com",
            password: password,
            password_confirmation: password,
            quote: "Welcome to Star Support! Yeesssssss! Free to talk to any of our star support droids or use two browsers to experience Asynchronous Chat with ActionCable chat with yourself, you are. Yeesssssss! Yeesssssss! A user of a new message if the user doesn't have an opened window or it's minimized, you'll notice functionality to notify."
)

puts "Created #{ devan.name}, who says: #{ devan.quote}."

c_3po = User.create(
    name: "C-3PO",
    email: "odds-of-survival@interpreter.com",
    password: password,
    password_confirmation: password,
    quote: "Don't blame me. I'm an interpreter. I'm not supposed to know a power socket from a computer terminal.",
)
puts "Created #{ c_3po.name}, who says: #{ c_3po.quote}."

r2_d2 = User.create(
    name: "R2-D2",
    email: "weepwooopwub@bleep.com",
    password: password,
    password_confirmation: password,
    quote: "Wuup woob, weepwoopwub... waaaaaargh.",
)
puts "Created #{ r2_d2.name}, who says: #{ r2_d2.quote}."

chooper = User.create(
    name: "Chooper",
    email: "bloop-boop@bleep.com",
    password: password,
    password_confirmation: password,
    quote: "Bleep Bleep Bloop.",
)
puts "Created #{ chooper.name}, who says: #{ chooper.quote}."

r2_kt = User.create(
    name: "R2-KT",
    email: "b@bleep.com",
    password: password,
    password_confirmation: password,
    quote: "Beep bloop blop bleep boop.",
)
puts "Created #{ r2_kt.name}, who says: #{ r2_kt.quote}."