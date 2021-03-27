# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'faker'

Booking.destroy_all
User.destroy_all
Event.destroy_all
Venue.destroy_all
puts "Database Cleaned"

user_image_array = ['https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615050295/user_1.webp', 'https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615050312/user_2.webp', 'https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615050350/user_3.webp', 'https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615050389/user_4.webp', 'https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615050418/user_5.webp', 'https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615050446/user_6.webp', 'https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615050480/user_7.webp', 'https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615050615/user_8.webp', 'https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615050638/user_9.webp', 'https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615050659/user_10.webp', 'https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615050295/user_1.webp', 'https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615050312/user_2.webp', 'https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615050350/user_3.webp', 'https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615050389/user_4.webp', 'https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615050418/user_5.webp', 'https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615050446/user_6.webp', 'https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615050480/user_7.webp', 'https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615050615/user_8.webp', 'https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615050638/user_9.webp', 'https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615050659/user_10.webp']

# Creating 20 users

user_1 = User.create!(
  first_name: "Chris",
  last_name: "Bellairs",
  stage_name: "Tha Fresh Prince of Bellairs",
  email: "c.m.bellairs@gmail.com",
  password: "password",
  telephone: "0800 123 456",
  city: "London",
  biography: Faker::GreekPhilosophers.quote,
  dependability: 4.5,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615050295/user_1.webp')

user_1.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
user_1.save!

puts "Created user 1"

venue_1 = Venue.create!(
  name: "Cavendish Arms",
  address: "128 Hartington Road, London",
  postcode: "SW8 2HJ",
  telephone: "020 7498 7464",
  email: "INFO@THECAVENDISHARMSSTOCKWELL.CO.UK",
  website: "https://www.facebook.com/thecavendisharms",
  verified: true,
  user: user_1,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615031833/Pub_1.jpg')

venue_1.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
venue_1.save!

puts "Created venue 1"

event_1 = Event.create!(
  name: "Comedy Virgins",
  time: "19:00",
  date: "17/05/2021",
  address: "128 Hartington Road, London",
  venue: venue_1,
  available_spots: 12,
  total_spots: 12,
  booked_spots: 0,
  bringer: true,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615046879/event_1.jpg')

event_1.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
event_1.save!

puts "Created event 1"

user_2 = User.create!(
  first_name: "Felicity",
  last_name: "Towler",
  stage_name: "The Towler Prowler",
  email: "felicity@scaldendfarm.com",
  password: "password",
  telephone: "0800 123 456",
  city: "London",
  biography: "I'm the funniest person I know....",
  dependability: 2.5,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615050312/user_2.webp')

user_2.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
user_2.save!

puts "Created user 2"

venue_2 = Venue.create!(
  name: "The Jago",
  address: "440 Kingsland Rd, London",
  postcode: "E8 4AA",
  telephone: "020 7683 0438",
  email: "hello@thejagodalston.com",
  website: "https://www.thejagodalston.com/",
  verified: true,
  user: user_2,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615035402/Pub_4.webp')

venue_2.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
venue_2.save!

puts "Created venue 2"

event_2 = Event.create!(
  name: "We Are Funny Project",
  time: "19:00",
  date: "17/05/2021",
  address: "440 Kingsland Rd, London",
  venue: venue_2,
  available_spots: 12,
  total_spots: 12,
  booked_spots: 0,
  bringer: true,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615046868/event_2.webp')

event_2.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
event_2.save!

puts "Created event 2"

user_3 = User.create!(
  first_name: "Matt",
  last_name: "Woods",
  stage_name: "Got Woods",
  email: "woodsmj17@gmail.com",
  password: "password",
  telephone: "0800 123 456",
  city: "London",
  biography: "I was inspired by Freddie to give comedy a go.",
  dependability: 3.5,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615050350/user_3.webp')

user_3.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
user_3.save!

puts "Created user 3"

venue_3 = Venue.create!(
  name: "Cornershop Bar",
  address: "123 Shoreditch High St, London",
  postcode: "E1 6JE",
  telephone: "020 7613 3554",
  email: "bookings@thecornershopbar.co.uk",
  website: "thecornershopbar.co.uk",
  verified: true,
  user: user_3,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615035333/Pub_2.webp')

venue_3.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
venue_3.save!

puts "Created venue 3"

event_3 = Event.create!(
  name: "Sam Rhodes Comedy Explosion",
  time: "19:00",
  date: "19/05/2021",
  address: "123 Shoreditch High St, London",
  venue: venue_3,
  available_spots: 12,
  total_spots: 12,
  booked_spots: 0,
  bringer: false,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615046972/event_3.webp')

event_3.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
event_3.save!

puts "Created event 3"


user_4 = User.create!(
  first_name: "Robert",
  last_name: "Burr",
  stage_name: "Bill Burr",
  email: "billburr@gmail.com",
  password: "password",
  telephone: "0800 123 456",
  city: "London",
  biography: "I'm amazing at music and comedy.",
  dependability: 4.5,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615050389/user_4.webp')

user_4.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
user_4.save!

puts "Created user 4"

venue_4 = Venue.create!(
  name: "Vauxhall Street Food Garden",
  address: "6 South Lambeth Place, London",
  postcode: "SW8 1SP",
  telephone: "020 3242 0040",
  email: "INFO@VAUXHALLSTREETFOOD.CO.UK",
  website: "https://www.facebook.com/VauxhallComedyClub/",
  verified: true,
  user: user_4,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615035374/Pub_3.webp')

venue_4.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
venue_4.save!



puts "Created venue 4"

event_4 = Event.create!(
  name: "Vauxhall Comedy Club",
  time: "19:00",
  date: "20/05/2021",
  address: "6 South Lambeth Place, London",
  venue: venue_4,
  available_spots: 12,
  total_spots: 12,
  booked_spots: 0,
  bringer: true,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615047002/event_4.webp')

event_4.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
event_4.save!

puts "Created event 4"

user_5 = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  stage_name: Faker::FunnyName.two_word_name,
  email: Faker::Internet.email,
  password: "password",
  telephone: "0800 123 456",
  city: "London",
  biography: Faker::GreekPhilosophers.quote,
  dependability: 1.5,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615050418/user_5.webp')

user_5.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
user_5.save!

puts "Created user 5"

venue_5 = Venue.create!(
  name: "The Grafton",
  address: "20 Prince of Wales Road, London",
  postcode: "NW5 3LG",
  telephone: "020 7482 4466",
  email: Faker::Internet.email,
  website: "https://www.facebook.com/notanothercomedynight/",
  verified: false,
  user: user_5,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615035569/Pub_6.webp')

venue_5.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
venue_5.save!

puts "Created venue 5"

event_5 = Event.create!(
  name: "Not Another Comedy Night",
  time: "19:00",
  date: "18/05/2021",
  address: "20 Prince of Wales Road, London",
  venue: venue_5,
  available_spots: 10,
  total_spots: 10,
  booked_spots: 0,
  bringer: true,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615047126/event_5.webp')

event_5.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
event_5.save!

puts "Created event 5"

user_6 = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  stage_name: Faker::FunnyName.two_word_name,
  email: Faker::Internet.email,
  password: "password",
  telephone: "0800 123 456",
  city: "London",
  biography: Faker::GreekPhilosophers.quote,
  dependability: 4.5,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615050446/user_6.webp')

user_6.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
user_6.save!

puts "Created user 6"

venue_6 = Venue.create!(
  name: "Bar Rumba",
  address: "36 Shaftesbury Avenue, London",
  postcode: "W1D 7EP",
  telephone: "020 7287 6933",
  email: Faker::Internet.email,
  website: "https://www.lionsdencomedy.co.uk/",
  verified: true,
  user: user_6,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615031833/Pub_1.jpg')

venue_6.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
venue_6.save!

puts "Created venue 6"

event_6 = Event.create!(
  name: "Lion’s Den Comedy Car Crash",
  time: "19:00",
  date: "19/05/2021",
  address: "36 Shaftesbury Avenue, London",
  venue: venue_6,
  available_spots: 15,
  total_spots: 15,
  booked_spots: 0,
  bringer: true,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615047150/event_6.webp')

event_6.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
event_6.save!

puts "Created event 6"

user_7 = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  stage_name: Faker::FunnyName.two_word_name,
  email: Faker::Internet.email,
  password: "password",
  telephone: "0800 123 456",
  city: "London",
  biography: Faker::GreekPhilosophers.quote,
  dependability: 1.5,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615050480/user_7.webp')

user_7.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
user_7.save!

puts "Created user 7"

venue_7 = Venue.create!(
  name: "The Old Crown",
  address: "33 New Oxford St, London",
  postcode: "WC1A 1BH",
  telephone: "020 7836 9121",
  email: Faker::Internet.email,
  website: "theoldcrownpublichouse.com",
  verified: true,
  user: user_7,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615035374/Pub_3.webp')

venue_7.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
venue_7.save!

puts "Created venue 7"

event_7 = Event.create!(
  name: "Rising Stars",
  time: "19:00",
  date: "23/05/2021",
  address: "33 New Oxford St, London",
  venue: venue_7,
  available_spots: 12,
  total_spots: 12,
  booked_spots: 0,
  bringer: true,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615047167/event_7.webp')

event_7.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
event_7.save!

puts "Created event 7"


user_8 = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  stage_name: Faker::FunnyName.two_word_name,
  email: Faker::Internet.email,
  password: "password",
  telephone: "0800 123 456",
  city: "London",
  biography: Faker::GreekPhilosophers.quote,
  dependability: 4.5,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615050615/user_8.webp')

user_8.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
user_8.save!

puts "Created user 8"

venue_8 = Venue.create!(
  name: "South Kensington Comedy Club",
  address: "34a Thurloe Place, London",
  postcode: "SW7 2HQ",
  telephone: "0800 123 456",
  email: Faker::Internet.email,
  website: "https://www.facebook.com/groups/202142450258959/",
  verified: true,
  user: user_8,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615035435/Pub_5.webp')

venue_8.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
venue_8.save!

puts "Created venue 8"

event_8 = Event.create!(
  name: "South Kensington Comedy Club",
  time: "19:00",
  date: "22/05/2021",
  address: "34a Thurloe Place, London",
  venue: venue_8,
  available_spots: 12,
  total_spots: 12,
  booked_spots: 0,
  bringer: false,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615046868/event_2.webp')

event_8.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
event_8.save!

puts "Created event 8"

user_9 = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  stage_name: Faker::FunnyName.two_word_name,
  email: Faker::Internet.email,
  password: "password",
  telephone: "0800 123 456",
  city: "London",
  biography: Faker::GreekPhilosophers.quote,
  dependability: 4.5,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615050638/user_9.webp')

user_9.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
user_9.save!

puts "Created user 9"

venue_9 = Venue.create!(
  name: "The Dean Swift",
  address: "10 Gainsford St, London",
  postcode: "SE1 2NE",
  telephone: "020 3196 6949",
  email: Faker::Internet.email,
  website: "https://www.facebook.com/groups/582408618478799/",
  verified: true,
  user: user_9,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615035569/Pub_6.webp')

venue_9.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
venue_9.save!

puts "Created venue 9"

event_9 = Event.create!(
  name: "Funny Feckers",
  time: "19:00",
  date: "20/05/2021",
  address: "10 Gainsford St, London",
  venue: venue_9,
  available_spots: 12,
  total_spots: 12,
  booked_spots: 0,
  bringer: true,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615047126/event_5.webp')

event_9.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
event_9.save!

puts "Created event 9"

user_10 = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  stage_name: Faker::FunnyName.two_word_name,
  email: Faker::Internet.email,
  password: "password",
  telephone: "0800 123 456",
  city: "London",
  biography: Faker::GreekPhilosophers.quote,
  dependability: 4.5,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615050659/user_10.webp')

user_10.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
user_10.save!

puts "Created user 10"

venue_10 = Venue.create!(
  name: "Savoy Tap",
  address: "2 Savoy St, London",
  postcode: "WC2R 0BA",
  telephone: "020 7836 9738",
  email: Faker::Internet.email,
  website: "https://www.facebook.com/groups/784575835002088/",
  verified: true,
  user: user_10,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615035374/Pub_3.webp')

venue_10.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
venue_10.save!

puts "Created venue 10"

event_10 = Event.create!(
  name: "Birdies Comedy",
  time: "19:00",
  date: "21/05/2021",
  address: "2 Savoy St, London",
  venue: venue_10,
  available_spots: 18,
  total_spots: 18,
  booked_spots: 0,
  bringer: true,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615047167/event_7.webp')

event_10.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
event_10.save!

puts "Created event 10"

user_11 = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  stage_name: Faker::FunnyName.two_word_name,
  email: Faker::Internet.email,
  password: "password",
  telephone: "0800 123 456",
  city: "London",
  biography: Faker::GreekPhilosophers.quote,
  dependability: 4.5,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615050295/user_1.webp')

user_11.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
user_11.save!

puts "Created user 11"

venue_11 = Venue.create!(
  name: "The King’s Head",
  address: "2 Crouch End Hill, London",
  postcode: "N8 8AA",
  telephone: "01920 823265",
  email: Faker::Internet.email,
  website: "http://www.downstairsatthekingshead.com/Performers.aspx",
  verified: true,
  user: user_11,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615035435/Pub_5.webp')

venue_11.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
venue_11.save!

puts "Created venue 11"

event_11 = Event.create!(
  name: "Downstairs at the King’s Head",
  time: "19:00",
  date: "20/05/2021",
  address: "2 Crouch End Hill, London",
  venue: venue_11,
  available_spots: 14,
  total_spots: 14,
  booked_spots: 0,
  bringer: false,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615046972/event_3.webp')

event_11.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
event_11.save!

puts "Created event 11"


user_12 = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  stage_name: Faker::FunnyName.two_word_name,
  email: Faker::Internet.email,
  password: "password",
  telephone: "0800 123 456",
  city: "London",
  biography: Faker::GreekPhilosophers.quote,
  dependability: 4.5,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615050312/user_2.webp')

user_12.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
user_12.save!

puts "Created user 12"

venue_12 = Venue.create!(
  name: "Up The Creek",
  address: "302 Creek Rd, London",
  postcode: "SE10 9SW",
  telephone: "020 8858 4581",
  email: "contactus@up-the-creek.com",
  website: "https://up-the-creek.com/",
  verified: true,
  user: user_12,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615035402/Pub_4.webp')

venue_12.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
venue_12.save!

puts "Created venue 12"

event_12 = Event.create!(
  name: "The Blackout",
  time: "19:00",
  date: "20/05/2021",
  address: "302 Creek Rd, London",
  venue: venue_12,
  available_spots: 12,
  total_spots: 12,
  booked_spots: 0,
  bringer: false,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615047002/event_4.webp')

event_12.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
event_12.save!

puts "Created event 12"

user_13 = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  stage_name: Faker::FunnyName.two_word_name,
  email: Faker::Internet.email,
  password: "password",
  telephone: "0800 123 456",
  city: "London",
  biography: Faker::GreekPhilosophers.quote,
  dependability: 4.5,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615050350/user_3.webp')

user_13.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
user_13.save!

puts "Created user 13"

venue_13 = Venue.create!(
  name: "The Comedy Store",
  address: "1a Oxendon St, London",
  postcode: "SW1Y 4EE",
  telephone: "020 7024 2060",
  email: "London@thecomedystore.co.uk",
  website: "https://london.thecomedystore.co.uk/",
  verified: true,
  user: user_13,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615035569/Pub_6.webp')

venue_13.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
venue_13.save!

puts "Created venue 13"

event_13 = Event.create!(
  name: "King Gong",
  time: "19:00",
  date: "31/05/2021",
  address: "1a Oxendon St, London",
  venue: venue_13,
  available_spots: 20,
  total_spots: 20,
  booked_spots: 0,
  bringer: false,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615046868/event_2.webp')

event_13.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
event_13.save!

puts "Created event 13"



user_14 = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  stage_name: Faker::FunnyName.two_word_name,
  email: Faker::Internet.email,
  password: "password",
  telephone: "0800 123 456",
  city: "London",
  biography: Faker::GreekPhilosophers.quote,
  dependability: 4.5,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615050389/user_4.webp')

user_14.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
user_14.save!

puts "Created user 14"

venue_14 = Venue.create!(
  name: "The Rose & Crown",
  address: "71-73 Torriano Avenue, London",
  postcode: "NW5 2SG",
  telephone: "0800 123 456",
  email: Faker::Internet.email,
  website: "http://thefreedomfridge.weebly.com/booking-a-spot.html",
  verified: true,
  user: user_14,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615035435/Pub_5.webp')

venue_14.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
venue_14.save!

puts "Created venue 14"

event_14 = Event.create!(
  name: "Freedom Fridge",
  time: "19:00",
  date: "20/05/2021",
  address: "71-73 Torriano Avenue, London",
  venue: venue_14,
  available_spots: 12,
  total_spots: 12,
  booked_spots: 0,
  bringer: true,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615047150/event_6.webp')

event_14.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
event_14.save!

puts "Created event 14"

user_15 = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  stage_name: Faker::FunnyName.two_word_name,
  email: Faker::Internet.email,
  password: "password",
  telephone: "0800 123 456",
  city: "London",
  biography: Faker::GreekPhilosophers.quote,
  dependability: 4.5,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615050418/user_5.webp')

user_15.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
user_15.save!

puts "Created user 15"

venue_15 = Venue.create!(
  name: "The Oak & Pastor",
  address: "86 Junction Road, London",
  postcode: "N19 5QZ",
  telephone: "0800 123 456",
  email: Faker::Internet.email,
  website: "http://jesterjesters.com/",
  verified: true,
  user: user_15,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615035402/Pub_4.webp')

venue_15.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
venue_15.save!

puts "Created venue 15"

event_15 = Event.create!(
  name: "Jesters: Raconteur Night",
  time: "19:00",
  date: "19/05/2021",
  address: "86 Junction Road, London",
  venue: venue_15,
  available_spots: 12,
  total_spots: 12,
  booked_spots: 0,
  bringer: false,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615047167/event_7.webp')

event_15.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
event_15.save!

puts "Created event 15"


user_16 = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  stage_name: Faker::FunnyName.two_word_name,
  email: Faker::Internet.email,
  password: "password",
  telephone: "0800 123 456",
  city: "London",
  biography: Faker::GreekPhilosophers.quote,
  dependability: 4.5,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615050446/user_6.webp')

user_16.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
user_16.save!

puts "Created user 16"

venue_16 = Venue.create!(
  name: "The Grove",
  address: "83 Hammersmith Grove, London",
  postcode: "W6 0NQ",
  telephone: "020 8748 29661",
  email: Faker::Internet.email,
  website: "https://www.facebook.com/groups/317238835133159/",
  verified: true,
  user: user_16,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615035374/Pub_3.webp')

venue_16.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
venue_16.save!

puts "Created venue 16"

event_16 = Event.create!(
  name: "Instant Laughs",
  time: "19:00",
  date: "18/05/2021",
  address: "83 Hammersmith Grove, London",
  venue: venue_16,
  available_spots: 12,
  total_spots: 12,
  booked_spots: 0,
  bringer: true,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615046972/event_3.webp')

event_16.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
event_16.save!

puts "Created event 16"

user_17 = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  stage_name: Faker::FunnyName.two_word_name,
  email: Faker::Internet.email,
  password: "password",
  telephone: "0800 123 456",
  city: "London",
  biography: Faker::GreekPhilosophers.quote,
  dependability: 4.5,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615050480/user_7.webp')

user_17.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
user_17.save!

puts "Created user 17"

venue_17 = Venue.create!(
  name: "The Gregorian",
  address: "96 Jamaica Rd, London",
  postcode: "SE16 4SQ",
  telephone: "020 7252 0449",
  email: Faker::Internet.email,
  website: "www.thegregorian.co.uk",
  verified: true,
  user: user_17,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615035333/Pub_2.webp')

venue_17.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
venue_17.save!

puts "Created venue 17"

event_17 = Event.create!(
  name: "Comedy Gobbledegook",
  time: "19:00",
  date: "25/05/2021",
  address: "96 Jamaica Rd, London",
  venue: venue_17,
  available_spots: 12,
  total_spots: 12,
  booked_spots: 0,
  bringer: true,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615047126/event_5.webp')

event_17.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
event_17.save!

puts "Created event 17"

user_18 = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  stage_name: Faker::FunnyName.two_word_name,
  email: Faker::Internet.email,
  password: "password",
  telephone: "0800 123 456",
  city: "London",
  biography: Faker::GreekPhilosophers.quote,
  dependability: 4.5,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615050615/user_8.webp')

user_18.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
user_18.save!

puts "Created user 18"

venue_18 = Venue.create!(
  name: "The Vine",
  address: "86 Highgate Rd, London",
  postcode: "NW5 1PB",
  telephone: "020 7209 0038",
  email: Faker::Internet.email,
  website: "https://www.facebook.com/groups/341746814250/",
  verified: true,
  user: user_18,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615035569/Pub_6.webp')

venue_18.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
venue_18.save!

puts "Created venue 18"

event_18 = Event.create!(
  name: "TNT Comedy",
  time: "19:00",
  date: "18/05/2021",
  address: "86 Highgate Rd, London",
  venue: venue_18,
  available_spots: 12,
  total_spots: 12,
  booked_spots: 0,
  bringer: true,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615046879/event_1.jpg')

event_18.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
event_18.save!

puts "Created event 18"

user_19 = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  stage_name: Faker::FunnyName.two_word_name,
  email: Faker::Internet.email,
  password: "password",
  telephone: "0800 123 456",
  city: "London",
  biography: Faker::GreekPhilosophers.quote,
  dependability: 4.5,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615050638/user_9.webp')

user_19.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
user_19.save!

puts "Created user 19"

venue_19 = Venue.create!(
  name: "The Princess Victoria",
  address: "217 Uxbridge Rd, London",
  postcode: "W12 9DH",
  telephone: "020 8749 4466",
  email: Faker::Internet.email,
  website: "https://www.facebook.com/groups/107019676090831/",
  verified: true,
  user: user_19,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615035402/Pub_4.webp')

venue_19.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
venue_19.save!

puts "Created venue 19"

event_19 = Event.create!(
  name: "Heavenly Comedy",
  time: "19:00",
  date: "19/05/2021",
  address: "217 Uxbridge Rd, London",
  venue: venue_19,
  available_spots: 12,
  total_spots: 12,
  booked_spots: 0,
  bringer: false,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615047002/event_4.webp')

event_19.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
event_19.save!

puts "Created event 19"

user_20 = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  stage_name: Faker::FunnyName.two_word_name,
  email: Faker::Internet.email,
  password: "password",
  telephone: "0800 123 456",
  city: "London",
  biography: Faker::GreekPhilosophers.quote,
  dependability: 4.5,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615050659/user_10.webp')

user_20.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
user_20.save!

puts "Created user 20"

venue_20 = Venue.create!(
  name: "Arch One",
  address: "West Ham Arches, London",
  postcode: "E16 4BJ",
  telephone: "07969 604094",
  email: "arch1@arch1.co.uk",
  website: "https://www.facebook.com/groups/226354827562684/",
  verified: true,
  user: user_20,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615035374/Pub_3.webp')

venue_20.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
venue_20.save!

puts "Created venue 20"

event_20 = Event.create!(
  name: "G&B Comedy",
  time: "19:00",
  date: "18/05/2021",
  address: "West Ham Arches, London",
  venue: venue_20,
  available_spots: 12,
  total_spots: 12,
  booked_spots: 0,
  bringer: true,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615046868/event_2.webp')

event_20.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
event_20.save!

puts "Created event 20"

event_21 = Event.create!(
  name: "Comedy Virgins",
  time: "19:00",
  date: "19/05/2021",
  address: "128 Hartington Road, London",
  venue: venue_1,
  available_spots: 0,
  total_spots: 12,
  booked_spots: 0,
  bringer: true,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615046879/event_1.jpg')

event_21.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
event_21.save!

puts "Created event 21"

event_22 = Event.create!(
  name: "We Are Funny Project",
  time: "19:00",
  date: "19/05/2021",
  address: "440 Kingsland Rd, London",
  venue: venue_2,
  available_spots: 1,
  total_spots: 12,
  booked_spots: 0,
  bringer: true,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615046868/event_2.webp')

event_22.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
event_22.save!

puts "Created event 22"

event_24 = Event.create!(
  name: "Vauxhall Comedy Club",
  time: "19:00",
  date: "17/05/2021",
  address: "6 South Lambeth Place, London",
  venue: venue_4,
  available_spots: 4,
  total_spots: 12,
  booked_spots: 0,
  bringer: true,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615047002/event_4.webp')

event_24.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
event_24.save!

puts "Created event 24"

event_25 = Event.create!(
  name: "Not Another Comedy Night",
  time: "19:00",
  date: "17/05/2021",
  address: "20 Prince of Wales Road, London",
  venue: venue_5,
  available_spots: 3,
  total_spots: 10,
  booked_spots: 0,
  bringer: true,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615047126/event_5.webp')

event_25.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
event_25.save!

puts "Created event 25"

event_26 = Event.create!(
  name: "Lion’s Den Comedy Car Crash",
  time: "19:00",
  date: "17/05/2021",
  address: "36 Shaftesbury Avenue, London",
  venue: venue_6,
  available_spots: 7,
  total_spots: 15,
  booked_spots: 0,
  bringer: true,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615047150/event_6.webp')

event_26.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
event_26.save!

puts "Created event 26"

event_27 = Event.create!(
  name: "Rising Stars",
  time: "19:00",
  date: "19/05/2021",
  address: "33 New Oxford St, London",
  venue: venue_7,
  available_spots: 0,
  total_spots: 12,
  booked_spots: 0,
  bringer: true,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615047167/event_7.webp')

event_27.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
event_27.save!

puts "Created event 27"

event_28 = Event.create!(
  name: "South Kensington Comedy Club",
  time: "19:00",
  date: "19/05/2021",
  address: "34a Thurloe Place, London",
  venue: venue_8,
  available_spots: 1,
  total_spots: 12,
  booked_spots: 0,
  bringer: false,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615046868/event_2.webp')

event_28.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
event_28.save!

puts "Created event 28"

event_29 = Event.create!(
  name: "Funny Feckers",
  time: "19:00",
  date: "19/05/2021",
  address: "10 Gainsford St, London",
  venue: venue_9,
  available_spots: 4,
  total_spots: 12,
  booked_spots: 0,
  bringer: true,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615047126/event_5.webp')

event_29.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
event_29.save!

puts "Created event 29"

event_30 = Event.create!(
  name: "Birdies Comedy",
  time: "19:00",
  date: "17/05/2021",
  address: "2 Savoy St, London",
  venue: venue_10,
  available_spots: 2,
  total_spots: 18,
  booked_spots: 0,
  bringer: true,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615047167/event_7.webp')

event_30.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
event_30.save!

puts "Created event 30"

event_31 = Event.create!(
  name: "Downstairs at the King’s Head",
  time: "19:00",
  date: "19/05/2021",
  address: "2 Crouch End Hill, London",
  venue: venue_11,
  available_spots: 6,
  total_spots: 14,
  booked_spots: 0,
  bringer: false,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615046972/event_3.webp')

event_31.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
event_31.save!

puts "Created event 31"

event_32 = Event.create!(
  name: "The Blackout",
  time: "19:00",
  date: "17/05/2021",
  address: "302 Creek Rd, London",
  venue: venue_12,
  available_spots: 7,
  total_spots: 12,
  booked_spots: 0,
  bringer: false,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615047002/event_4.webp')

event_32.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
event_32.save!

puts "Created event 32"

event_33 = Event.create!(
  name: "King Gong",
  time: "19:00",
  date: "19/05/2021",
  address: "1a Oxendon St, London",
  venue: venue_13,
  available_spots: 0,
  total_spots: 20,
  booked_spots: 0,
  bringer: false,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615046868/event_2.webp')

event_33.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
event_33.save!

puts "Created event 33"

event_34 = Event.create!(
  name: "Freedom Fridge",
  time: "19:00",
  date: "17/05/2021",
  address: "71-73 Torriano Avenue, London",
  venue: venue_14,
  available_spots: 3,
  total_spots: 12,
  booked_spots: 0,
  bringer: true,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615047150/event_6.webp')

event_34.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
event_34.save!

puts "Created event 34"

event_35 = Event.create!(
  name: "Jesters: Raconteur Night",
  time: "19:00",
  date: "17/05/2021",
  address: "86 Junction Road, London",
  venue: venue_15,
  available_spots: 1,
  total_spots: 12,
  booked_spots: 0,
  bringer: false,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615047167/event_7.webp')

event_35.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
event_35.save!

puts "Created event 35"

event_36 = Event.create!(
  name: "Instant Laughs",
  time: "19:00",
  date: "17/05/2021",
  address: "83 Hammersmith Grove, London",
  venue: venue_16,
  available_spots: 5,
  total_spots: 12,
  booked_spots: 0,
  bringer: true,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615046972/event_3.webp')

event_36.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
event_36.save!

puts "Created event 36"

event_37 = Event.create!(
  name: "Comedy Gobbledegook",
  time: "19:00",
  date: "19/05/2021",
  address: "96 Jamaica Rd, London",
  venue: venue_17,
  available_spots: 0,
  total_spots: 12,
  booked_spots: 0,
  bringer: true,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615047126/event_5.webp')

event_37.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
event_37.save!

puts "Created event 37"

event_38 = Event.create!(
  name: "TNT Comedy",
  time: "19:00",
  date: "17/05/2021",
  address: "86 Highgate Rd, London",
  venue: venue_18,
  available_spots: 2,
  total_spots: 12,
  booked_spots: 0,
  bringer: true,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615046879/event_1.jpg')

event_38.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
event_38.save!

puts "Created event 38"

event_39 = Event.create!(
  name: "Heavenly Comedy",
  time: "19:00",
  date: "17/05/2021",
  address: "217 Uxbridge Rd, London",
  venue: venue_19,
  available_spots: 10,
  total_spots: 12,
  booked_spots: 0,
  bringer: false,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615047002/event_4.webp')

event_39.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
event_39.save!

puts "Created event 39"

event_40 = Event.create!(
  name: "G&B Comedy",
  time: "19:00",
  date: "19/05/2021",
  address: "West Ham Arches, London",
  venue: venue_20,
  available_spots: 4,
  total_spots: 12,
  booked_spots: 0,
  bringer: true,
)

puts "Created event 40"

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615046868/event_2.webp')

event_40.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
event_40.save!

event_41 = Event.create!(
  name: "Lion’s Den Comedy Car Crash",
  time: "19:00",
  date: "26/05/2021",
  address: "36 Shaftesbury Avenue, London",
  venue: venue_6,
  available_spots: 7,
  total_spots: 15,
  booked_spots: 0,
  bringer: true,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615047150/event_6.webp')

event_41.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
event_41.save!

puts "Created event 41"

event_42 = Event.create!(
  name: "Lion’s Den Comedy Car Crash",
  time: "19:00",
  date: "24/05/2021",
  address: "36 Shaftesbury Avenue, London",
  venue: venue_6,
  available_spots: 7,
  total_spots: 15,
  booked_spots: 0,
  bringer: true,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615047150/event_6.webp')

event_42.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
event_42.save!

puts "Created event 42"

puts "Created venue 3"

event_43 = Event.create!(
  name: "Sam Rhodes Comedy Explosion",
  time: "19:00",
  date: "16/09/2020",
  address: "123 Shoreditch High St, London",
  venue: venue_3,
  available_spots: 12,
  total_spots: 12,
  booked_spots: 0,
  bringer: false,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615046972/event_3.webp')

event_43.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
event_43.save!

user_21 = User.create!(
  first_name: "Freddie",
  last_name: "Millburn-Fryer",
  stage_name: "Freddie Fryer",
  email: "freddiefryer@gmail.com",
  password: "password",
  telephone: "0800 123 456",
  city: "London",
  biography: "I'm a musical comedian who belnds slick electric guitar licks with awkward humour.",
  dependability: 2.5,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615050659/user_10.webp')

user_21.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
user_21.save!

event_41 = Event.create!(
  name: "Vauxhall Comedy Club",
  time: "19:00",
  date: "24/09/2020",
  address: "6 South Lambeth Place, London",
  venue: venue_4,
  available_spots: 12,
  total_spots: 12,
  booked_spots: 0,
  bringer: true,
)

image_data = URI.open('https://res.cloudinary.com/dxoxrsvm2/image/upload/v1615047002/event_4.webp')

event_41.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
event_41.save!

Booking.create!(
  user: user_21,
  event: Event.find_by(date:"24/09/2020"),
  performed: true,
  approved: true,
)

past_event_approved_users = []
past_event_approved_users_count = 0

9.times do
  user = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  stage_name: Faker::FunnyName.two_word_name,
  email: Faker::Internet.email,
  password: "password",
  telephone: "0800 123 456",
  city: "London",
  biography: Faker::GreekPhilosophers.quote,
  dependability: [1, 2, 3, 4, 5].sample,
  )

  image_data = URI.open(user_image_array[past_event_approved_users_count])
  
  past_event_approved_users_count += 1

  user.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
  user.save!
  past_event_approved_users << user
end

past_event_approved_users.each do |person|
  booking = Booking.create!(
    user: person,
    event: Event.find_by(date:"24/09/2020"),
    performed: true,
    approved: true,
  )
  
  booking.event.available_spots -= 1
  booking.event.booked_spots += 1
  booking.event.save
end

puts "Created event 20"

Rating.create!(
  user: past_event_approved_users.sample,
  venue: venue_4, 
  performer_experience: 4,
)

Rating.create!(
  user: past_event_approved_users.sample,
  venue: venue_4, 
  performer_experience: 5,
)

puts "Creating bookings for Sam Rhodes Comedy Explosion"

sam_rhodes_approved_users = []
sam_rhodes_approved_users_count = 0

5.times do

  user = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  stage_name: Faker::FunnyName.two_word_name,
  email: Faker::Internet.email,
  password: "password",
  telephone: "0800 123 456",
  city: "London",
  biography: Faker::GreekPhilosophers.quote,
  dependability: [1, 2, 3, 4, 5].sample,
  )

  image_data = URI.open(user_image_array[sam_rhodes_approved_users_count])
  
  sam_rhodes_approved_users_count += 1

  user.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
  user.save!
  sam_rhodes_approved_users << user
end

sam_rhodes_approved_users.each do |person|
  booking = Booking.create!(
    user: person,
    event: Event.find_by(name:"Sam Rhodes Comedy Explosion"),
    performed: false,
    approved: true,
  )

  booking.event.available_spots -= 1
  booking.event.booked_spots += 1
  booking.event.save
end

sam_rhodes_unapproved_users = []

3.times do
  user = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  stage_name: Faker::FunnyName.two_word_name,
  email: Faker::Internet.email,
  password: "password",
  telephone: "0800 123 456",
  city: "London",
  biography: Faker::GreekPhilosophers.quote,
  dependability: [1, 2, 3, 4, 5].sample,
  )

  image_data = URI.open(user_image_array[sam_rhodes_approved_users_count])
  
  sam_rhodes_approved_users_count += 1

  user.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
  user.save!

  sam_rhodes_unapproved_users << user
end

sam_rhodes_unapproved_users.each do |person|
  booking = Booking.create!(
    user: person,
    event: Event.find_by(name:"Sam Rhodes Comedy Explosion"),
    performed: false,
    approved: false,
  )
end

puts "Created approved and unapproved bookings for Sam Rhodes Comedy Explosion"


puts "Creating bookings for Lions Den Comedy Car Crash"

lions_den_approved_users = []
lions_den_approved_users_count = 0

6.times do

  user = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  stage_name: Faker::FunnyName.two_word_name,
  email: Faker::Internet.email,
  password: "password",
  telephone: "0800 123 456",
  city: "London",
  biography: Faker::GreekPhilosophers.quote,
  dependability: [1, 2, 3, 4, 5].sample,
  )

  image_data = URI.open(user_image_array[lions_den_approved_users_count])
  
  lions_den_approved_users_count += 1

  user.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
  user.save!
  lions_den_approved_users << user
end

lions_den_approved_users.each do |person|
  booking = Booking.create!(
    user: person,
    event: Event.find_by(name:"Lion’s Den Comedy Car Crash"),
    performed: false,
    approved: true,
  )
  booking.event.available_spots -= 1
  booking.event.booked_spots += 1
  booking.event.save
end

lions_den_unapproved_users = []

4.times do
  user = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  stage_name: Faker::FunnyName.two_word_name,
  email: Faker::Internet.email,
  password: "password",
  telephone: "0800 123 456",
  city: "London",
  biography: Faker::GreekPhilosophers.quote,
  dependability: [1, 2, 3, 4, 5].sample,
  )

  image_data = URI.open(user_image_array[lions_den_approved_users_count])
  
  lions_den_approved_users_count += 1

  user.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
  user.save!

  lions_den_unapproved_users << user
end

lions_den_unapproved_users.each do |person|
  booking = Booking.create!(
    user: person,
    event: Event.find_by(name:"Lion’s Den Comedy Car Crash"),
    performed: false,
    approved: false,
  )
end

puts "Created approved and unapproved bookings for Lion's Den Comedy Car Crash"

puts "Creating bookings for Jesters raconteur night"

jesters_approved_users = []
jesters_approved_users_count = 0

4.times do

  user = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  stage_name: Faker::FunnyName.two_word_name,
  email: Faker::Internet.email,
  password: "password",
  telephone: "0800 123 456",
  city: "London",
  biography: Faker::GreekPhilosophers.quote,
  dependability: [1, 2, 3, 4, 5].sample,
  )

  image_data = URI.open(user_image_array[jesters_approved_users_count])
  
  jesters_approved_users_count += 1

  user.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
  user.save!
  jesters_approved_users << user
end

jesters_approved_users.each do |person|
  booking = Booking.create!(
    user: person,
    event: Event.find_by(name:"Jesters: Raconteur Night"),
    performed: false,
    approved: true,
  )
  booking.event.available_spots -= 1
  booking.event.booked_spots += 1
  booking.event.save
end

jesters_unapproved_users = []

5.times do
  user = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  stage_name: Faker::FunnyName.two_word_name,
  email: Faker::Internet.email,
  password: "password",
  telephone: "0800 123 456",
  city: "London",
  biography: Faker::GreekPhilosophers.quote,
  dependability: [1, 2, 3, 4, 5].sample,
  )

  image_data = URI.open(user_image_array[jesters_approved_users_count])
  
  jesters_approved_users_count += 1

  user.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
  user.save!

  jesters_unapproved_users << user
end

jesters_unapproved_users.each do |person|
  booking = Booking.create!(
    user: person,
    event: Event.find_by(name:"Jesters: Raconteur Night"),
    performed: false,
    approved: false,
  )
end

puts "Created approved and unapproved bookings for Jesters night"

puts "Creating bookings for Heavenly Comedy"

heavenly_approved_users = []
heavenly_approved_users_count = 0

12.times do

  user = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  stage_name: Faker::FunnyName.two_word_name,
  email: Faker::Internet.email,
  password: "password",
  telephone: "0800 123 456",
  city: "London",
  biography: Faker::GreekPhilosophers.quote,
  dependability: [1, 2, 3, 4, 5].sample,
  )

  image_data = URI.open(user_image_array[heavenly_approved_users_count])
  
  heavenly_approved_users_count += 1

  user.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
  user.save!
  heavenly_approved_users << user
end

heavenly_approved_users.each do |person|
  booking = Booking.create!(
    user: person,
    event: Event.find_by(name:"Heavenly Comedy"),
    performed: false,
    approved: true,
  )
  booking.event.available_spots -= 1
  booking.event.booked_spots += 1
  booking.event.save
end

heavenly_unapproved_users = []
heavenly_unapproved_users_count = 0

2.times do
  user = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  stage_name: Faker::FunnyName.two_word_name,
  email: Faker::Internet.email,
  password: "password",
  telephone: "0800 123 456",
  city: "London",
  biography: Faker::GreekPhilosophers.quote,
  dependability: [1, 2, 3, 4, 5].sample,
  )

  image_data = URI.open(user_image_array[heavenly_unapproved_users_count])
  
  heavenly_approved_users_count += 1

  user.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
  user.save!

  heavenly_unapproved_users << user
end

heavenly_unapproved_users.each do |person|
  booking = Booking.create!(
    user: person,
    event: Event.find_by(name:"Heavenly Comedy"),
    performed: false,
    approved: false,
  )
end

puts "Created approved and unapproved bookings for Heavenly Comedy"


car_crash_users = []
car_crash_users_count = 0

4.times do

  user = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  stage_name: Faker::FunnyName.two_word_name,
  email: Faker::Internet.email,
  password: "password",
  telephone: "0800 123 456",
  city: "London",
  biography: Faker::GreekPhilosophers.quote,
  dependability: [1, 2, 3, 4, 5].sample,
  )

  image_data = URI.open(user_image_array[heavenly_approved_users_count])
  
  car_crash_users_count += 1

  user.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
  user.save!
  car_crash_users << user
end

car_crash_users.each do |person|
  booking = Booking.create!(
    user: person,
    event: event_43,
    performed: false,
    approved: true,
  )
  booking.event.available_spots -= 1
  booking.event.booked_spots += 1
  booking.event.save
end

# one_hundred_users = []

# count = 0

# 100.times do
#   user = User.create!(
#   first_name: Faker::Name.first_name,
#   last_name: Faker::Name.last_name,
#   stage_name: Faker::FunnyName.two_word_name,
#   email: Faker::Internet.email,
#   password: "password",
#   telephone: "0800 123 456",
#   city: "London",
#   biography: Faker::GreekPhilosophers.quote,
#   dependability: [1, 2, 3, 4, 5].sample,
#   )
#   one_hundred_users << user
#   count += 1
#   puts "Created #{count.to_s} users."
# end

# puts "Created 100 users"

# booking_count = 0

# one_hundred_users.each do |person|
#   Booking.create!(
#     user: person,
#     event: Event.all.sample,
#     performed: false,
#     approved: true,
#   )
#   booking_count += 1
#   puts "Created #{booking_count.to_s} bookings."
# end
