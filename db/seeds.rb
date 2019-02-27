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

puts "Adding 5 epic tours to the database."

tours_array = [
  {
  title: "1900s history booze cruise",
  location: "Melbourne",
  description: "Super awesome booze cruise with lots of chicks Lorem ipsum dolor sit amet, consectetur adipisicing elit. Totam repellat pariatur, quis suscipit, sed, nostrum provident quod eligendi assumenda saepe eius adipisci aspernatur debitis tempore nihil voluptatibus corrupti, optio eveniet..",
  price: 80,
  date: "27-02-2019",
  capacity: 10,
  user: User.last
  },
  {
  title: "Camel ride across the Nullabor Desert",
  location: "Alice Springs",
  description: "Super awesome camel rides with lots of digital nomads. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo natus maiores laborum ipsam ea aut, accusantium ratione. Perferendis, consequuntur, adipisci. Magnam ad, placeat cum. Maxime architecto reprehenderit, dolores hic minus?",
  price: 2700,
  date: "27-02-2019",
  capacity: 10,
  user: User.last
  },
  {
  title: "Hipster bar crawl in Newtown",
  location: "Sydney",
  description: "Super awesome pub crawl with lots of httpsters. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero quibusdam amet ad magnam esse expedita aliquam quasi id voluptas neque alias quam eveniet officia voluptatum distinctio, aperiam necessitatibus quae quisquam.",
  price: 65,
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
  location: "Ballarat",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi commodi temporibus, veritatis quidem error, aperiam amet velit, ratione dolore eum id unde. Modi dolor enim ratione labore ipsum, sequi quas. Lorem ipsum dolor sit amet, consectetur adipisicing elit.",
  price: 500,
  date: "27-02-2019",
  capacity: 10,
  user: User.last
  }
]

Tour.create!(tours_array)

puts "5 tours added to your database!"
