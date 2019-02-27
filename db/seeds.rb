# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Clearing database..."

User.destroy_all
Tour.destroy_all

puts "Adding Winson, Alex & Adora as users to the database."

users_array = [
  {
  email: "winson@airtours.com",
  password: "securepassword"
  },
  {
  email: "alex@airtours.com",
  password: "securepassword"
  },
  {
  email: "adora@airtours.com",
  password: "securepassword"
  }
]

User.create!(users_array)

puts "3 users added to your database!"

puts "Adding 3 epic tours to the database."

tours_array = [
  {
  title: "1900s history booze cruise",
  location: "Melbourne",
  description: "Super awesome booze cruise with lots of chicks.",
  price: 80,
  date: "27-02-2019",
  capacity: 10,
  user: User.last
  },
  {
  title: "Camel ride across the Nullabor Desert",
  location: "Alice Springs",
  description: "Super awesome camel rides with lots of digital nomads.",
  price: 2700,
  date: "27-02-2019",
  capacity: 10,
  user: User.last
  },
  {
  title: "Hipster bar crawl in Newtown",
  location: "Sydney",
  description: "Super awesome pub crawl with lots of httpsters.",
  price: 65,
  date: "27-02-2019",
  capacity: 10,
  user: User.last
  }
]

Tour.create!(tours_array)

puts "3 tours added to your database!"
