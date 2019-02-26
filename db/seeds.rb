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
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi commodi temporibus, veritatis quidem error, aperiam amet velit, ratione dolore eum id unde. Modi dolor enim ratione labore ipsum, sequi quas. Lorem ipsum dolor sit amet, consectetur adipisicing elit.",
  price: 800,
  date: "27-02-2019",
  capacity: 10,
  user: User.last
  },
    {
  title: "Ghost Tour",
  location: "Melbourne",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi commodi temporibus, veritatis quidem error, aperiam amet velit, ratione dolore eum id unde. Modi dolor enim ratione labore ipsum, sequi quas. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit. In porro mollitia, quam voluptates ipsam iusto, animi illum doloremque rerum hic repudiandae ad dolor impedit eum itaque. Necessitatibus animi ab, natus.",
  price: 45,
  date: "27-02-2019",
  capacity: 10,
  user: User.last
  },
    {
  title: "Gold diggers fantasy camp",
  location: "Bendigo",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi commodi temporibus, veritatis quidem error, aperiam amet velit, ratione dolore eum id unde. Modi dolor enim ratione labore ipsum, sequi quas. Lorem ipsum dolor sit amet, consectetur adipisicing elit.",
  price: 500,
  date: "27-02-2019",
  capacity: 10,
  user: User.last
  }
]

Tour.create!(tours_array)

puts "1 tour added to your database!"
