# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Clearing database..."

# User.destroy_all
Tour.destroy_all

# puts "Adding 1 user to the database."

# users_array = [
#   {
#   email: "hello@user.com",
#   password: "Melbourne"
#   encrypted_password: "Melbourne"
#   }
# ]

# User.create!(users_array)

# puts "1 user added to your database!"

puts "Adding 1 tour to the database."

tours_array = [
  {
  title: "1900s history booze cruise",
  location: "Melbourne",
  description: "Super awesome booze cruise with lots of chicks who don't know how to code.",
  price: 800,
  date: "27-02-2019",
  capacity: 10,
  user: User.last
  }
]

Tour.create!(tours_array)

puts "1 tour added to your database!"
