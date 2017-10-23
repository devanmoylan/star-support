# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email


password = 'pass123'
4.times do
  u = User.create(
      name: Faker::StarWars.character,
      email: Faker::StarWars.specie+"@yahoo.com",
      password: password,
      password_confirmation: password,
      quote: Faker::StarWars.quote,
  )
  puts "Created #{u.email}, who says: #{u.quote}."

end