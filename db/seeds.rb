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
  email: "adora@airtours.com",
  password: "securepassword"
  },
  {
  email: "alex@airtours.com",
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
  user: User.last,
  category: "Boozy" #TODO: Create a dropdown of categories to choose from (mayben will need new table? But don't worry about it yet)
  },
  {
  title: "Camel ride across the Nullabor Desert",
  location: "Alice Springs",
  description: "Super awesome camel rides with lots of digital nomads. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo natus maiores laborum ipsam ea aut, accusantium ratione. Perferendis, consequuntur, adipisci. Magnam ad, placeat cum. Maxime architecto reprehenderit, dolores hic minus?",
  price: 250,
  date: "27-02-2019",
  capacity: 10,
  user: User.last,
  category: "Adventure"
  },
  {
  title: "Hipster bar crawl in Newtown",
  location: "Sydney",
  description: "Super awesome pub crawl with lots of httpsters. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero quibusdam amet ad magnam esse expedita aliquam quasi id voluptas neque alias quam eveniet officia voluptatum distinctio, aperiam necessitatibus quae quisquam.",
  price: 65,
  date: "27-02-2019",
  capacity: 10,
  user: User.last,
  category: "Boozy"
  },
  {
  title: "Ghost Tour",
  location: "Melbourne",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi commodi temporibus, veritatis quidem error, aperiam amet velit, ratione dolore eum id unde. Modi dolor enim ratione labore ipsum, sequi quas. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit. In porro mollitia, quam voluptates ipsam iusto, animi illum doloremque rerum hic repudiandae ad dolor impedit eum itaque. Necessitatibus animi ab, natus.",
  price: 45,
  date: "27-02-2019",
  capacity: 10,
  user: User.last,
  category: "Supernatural"
  },
  {
  title: "Gold diggers fantasy camp",
  location: "Ballarat",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi commodi temporibus, veritatis quidem error, aperiam amet velit, ratione dolore eum id unde. Modi dolor enim ratione labore ipsum, sequi quas. Lorem ipsum dolor sit amet, consectetur adipisicing elit.",
  price: 60,
  date: "27-02-2019",
  capacity: 10,
  user: User.last,
  category: "History"
  },
  {
  title: "Foodies galore",
  location: "Queensland",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi commodi temporibus, veritatis quidem error, aperiam amet velit, ratione dolore eum id unde. Modi dolor enim ratione labore ipsum, sequi quas. Lorem ipsum dolor sit amet, consectetur adipisicing elit.",
  price: 30,
  date: "27-02-2019",
  capacity: 20,
  user: User.first,
  category: "Food"
  },
  {
  title: "Diving with the sharks",
  location: "Cairns",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi commodi temporibus, veritatis quidem error, aperiam amet velit, ratione dolore eum id unde. Modi dolor enim ratione labore ipsum, sequi quas. Lorem ipsum dolor sit amet, consectetur adipisicing elit.",
  price: 100,
  date: "27-06-2019",
  capacity: 12,
  user: User.first,
  category: "Adventure"
  },
  {
  title: "Live it up with the crocodiles",
  location: "Darwin",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi commodi temporibus, veritatis quidem error, aperiam amet velit, ratione dolore eum id unde. Modi dolor enim ratione labore ipsum, sequi quas. Lorem ipsum dolor sit amet, consectetur adipisicing elit.",
  price: 50,
  date: "27-07-2019",
  capacity: 50,
  user: User.first,
  category: "Adventure"
  },
  {
  title: "Tuk Tuk racing",
  location: "Bangkok",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi commodi temporibus, veritatis quidem error, aperiam amet velit, ratione dolore eum id unde. Modi dolor enim ratione labore ipsum, sequi quas. Lorem ipsum dolor sit amet, consectetur adipisicing elit.",
  price: 50,
  date: "27-09-2019",
  capacity: 10,
  user: User.first,
  category: "Sightseeing"
  },
  {
  title: "Diving with corals",
  location: "Phi Phi Island",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi commodi temporibus, veritatis quidem error, aperiam amet velit, ratione dolore eum id unde. Modi dolor enim ratione labore ipsum, sequi quas. Lorem ipsum dolor sit amet, consectetur adipisicing elit.",
  price: 12,
  date: "14-07-2019",
  capacity: 30,
  user: User.first,
  category: "Adventure"
  },
  {
  title: "Fight like a viking",
  location: "Edinburgh",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi commodi temporibus, veritatis quidem error, aperiam amet velit, ratione dolore eum id unde. Modi dolor enim ratione labore ipsum, sequi quas. Lorem ipsum dolor sit amet, consectetur adipisicing elit.",
  price: 1000,
  date: "14-05-2019",
  capacity: 30,
  user: User.first,
  category: "History"
  },
  {
  title: "See Everest",
  location: "Nepal",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi commodi temporibus, veritatis quidem error, aperiam amet velit, ratione dolore eum id unde. Modi dolor enim ratione labore ipsum, sequi quas. Lorem ipsum dolor sit amet, consectetur adipisicing elit.",
  price: 12,
  date: "20-07-2019",
  capacity: 30,
  user: User.first,
  category: "Adventure"
  },
  {
  title: "MCG tours",
  location: "Melbourne Cricket Grounds",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi commodi temporibus, veritatis quidem error, aperiam amet velit, ratione dolore eum id unde. Modi dolor enim ratione labore ipsum, sequi quas. Lorem ipsum dolor sit amet, consectetur adipisicing elit.",
  price: 12,
  date: "20-07-2020",
  capacity: 30,
  user: User.first,
  category: "Sightseeing"
  },
  {
  title: "Penang Foodies Tour",
  location: "Penang",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi commodi temporibus, veritatis quidem error, aperiam amet velit, ratione dolore eum id unde. Modi dolor enim ratione labore ipsum, sequi quas. Lorem ipsum dolor sit amet, consectetur adipisicing elit.",
  price: 12,
  date: "20-07-2019",
  capacity: 20,
  user: User.first,
  category: "Food"
  },
  {
  title: "Sand dune boarding",
  location: "Perth",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi commodi temporibus, veritatis quidem error, aperiam amet velit, ratione dolore eum id unde. Modi dolor enim ratione labore ipsum, sequi quas. Lorem ipsum dolor sit amet, consectetur adipisicing elit.",
  price: 50,
  date: "20-03-2019",
  capacity: 20,
  user: User.first,
  category: "Adventure"
  },
  {
  title: "Hidden Melbourne cafes",
  location: "Melbourne",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi commodi temporibus, veritatis quidem error, aperiam amet velit, ratione dolore eum id unde. Modi dolor enim ratione labore ipsum, sequi quas. Lorem ipsum dolor sit amet, consectetur adipisicing elit.",
  price: 50,
  date: "20-04-2019",
  capacity: 15,
  user: User.first,
  category: "Food"
  }
]

Tour.create!(tours_array)

tours = Tour.all

tours.each do |tour|
  tour.remote_photo_url = "https://source.unsplash.com/1600x900/?#{tour.title}"
  tour.save
end

puts "Many awesome tours added to your database!"
