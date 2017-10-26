password = 'test1234'

yoda = User.create(
            name: "Yoda",
            email: "the-force@no-try.com",
            password: password,
            password_confirmation: password,
            quote: "Welcome to Star Support! Yeesssssss! Free to talk to any of the star chat support droids or use two browsers to experience Asynchronous Chat with ActionCable chat with yourself, you are. Yeesssssss! Yeesssssss! A user of a new message if the user doesn't have an opened window or it's minimized, you'll notice functionality to notify.",
            admin: true
)

puts "Created #{ yoda.name}, who says: #{ yoda.quote}."

c_3po = User.create(
    name: "C-3PO",
    email: "odds-of-survival@interpreter.com",
    password: password,
    password_confirmation: password,
    quote: "Don't blame me. I'm an interpreter. I'm not supposed to know a power socket from a computer terminal.",
    admin: true
)
puts "Created #{ c_3po.name}, who says: #{ c_3po.quote}."

r2_d2 = User.create(
    name: "R2-D2",
    email: "weepwooopwub@bleep.com",
    password: password,
    password_confirmation: password,
    quote: "Wuup woob, weepwoopwub... waaaaaargh.",
    admin: true
)
puts "Created #{ r2_d2.name}, who says: #{ r2_d2.quote}."

chooper = User.create(
    name: "Chopper",
    email: "bloop-boop@bleep.com",
    password: password,
    password_confirmation: password,
    quote: "Bleep Bleep Bloop.",
    admin: true
)
puts "Created #{ chooper.name}, who says: #{ chooper.quote}."

r2_kt = User.create(
    name: "R2-KT",
    email: "b@bleep.com",
    password: password,
    password_confirmation: password,
    quote: "Beep bloop blop bleep boop.",
    admin: true
)
puts "Created #{ r2_kt.name}, who says: #{ r2_kt.quote}."