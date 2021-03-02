# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'faker'

Booking.destroy_all
User.destroy_all
Event.destroy_all
Venue.destroy_all
puts "Database Cleaned"

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
puts "Created user 1"

venue_1 = Venue.new(
  name: "Cavendish Arms",
  address: "128 Hartington Road",
  postcode: "SW8 2HJ",
  telephone: "020 7498 7464",
  email: "INFO@THECAVENDISHARMSSTOCKWELL.CO.UK",
  website: "https://www.facebook.com/thecavendisharms",
  verified: true,
  user: user_1,
)
puts "Created venue 1"

event_1 = Event.new(
  name: "Comedy Virgins",
  time: "19:00",
  date: "03/05/2021",
  venue: venue_1,
  total_spots: 12,
  bringer: true,
)
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
puts "Created user 2"

venue_2 = Venue.new(
  name: "The Jago",
  address: "440 Kingsland Rd",
  postcode: "E8 4AA",
  telephone: "020 7683 0438",
  email: "hello@thejagodalston.com",
  website: "https://www.thejagodalston.com/",
  verified: true,
  user: user_2,
)
puts "Created venue 2"

event_2 = Event.new(
  name: "We Are Funny Project",
  time: "19:00",
  date: "03/05/2021",
  venue: venue_2,
  total_spots: 12,
  bringer: true,
)
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
puts "Created user 3"

venue_3 = Venue.new(
  name: "Cornershop Bar",
  address: "123 Shoreditch High St",
  postcode: "E1 6JE",
  telephone: "020 7613 3554",
  email: "bookings@thecornershopbar.co.uk",
  website: "thecornershopbar.co.uk",
  verified: true,
  user: user_3,
)
puts "Created venue 3"

event_3 = Event.new(
  name: "Sam Rhodes Comedy Explosion",
  time: "19:00",
  date: "05/05/2021",
  venue: venue_3,
  total_spots: 12,
  bringer: false,
)
puts "Created event 3"


user_4 = User.create!(
  first_name: "Freddie",
  last_name: "Millburn-Fryer",
  stage_name: "Freddie Fryer",
  email: "freddiefryercode@gmail.com",
  password: "password",
  telephone: "0800 123 456",
  city: "London",
  biography: "I'm amazing at music and comedy.",
  dependability: 4.5,
)
puts "Created user 4"

venue_4 = Venue.new(
  name: "Vauxhall Street Food Garden",
  address: "6 South Lambeth Place",
  postcode: "SW8 1SP",
  telephone: "020 3242 0040",
  email: "INFO@VAUXHALLSTREETFOOD.CO.UK",
  website: "https://www.facebook.com/VauxhallComedyClub/",
  verified: true,
  user: user_4,
)
puts "Created venue 4"

event_4 = Event.new(
  name: "Vauxhall Comedy Club",
  time: "19:00",
  date: "06/05/2021",
  venue: venue_4,
  total_spots: 12,
  bringer: true,
)
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
puts "Created user 5"

venue_5 = Venue.new(
  name: "The Grafton",
  address: "20 Prince of Wales Road",
  postcode: "NW5 3LG",
  telephone: "020 7482 4466",
  email: Faker::Internet.email,
  website: "https://www.facebook.com/notanothercomedynight/",
  verified: false,
  user: user_5,
)
puts "Created venue 5"

event_5 = Event.new(
  name: "Not Another Comedy Night",
  time: "19:00",
  date: "04/05/2021",
  venue: venue_5,
  total_spots: 10,
  bringer: true,
)
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
puts "Created user 6"

venue_6 = Venue.new(
  name: "Bar Rumba",
  address: "36 Shaftesbury Avenue",
  postcode: "W1D 7EP",
  telephone: "020 7287 6933",
  email: Faker::Internet.email,
  website: "https://www.lionsdencomedy.co.uk/",
  verified: true,
  user: user_6,
)
puts "Created venue 6"

event_6 = Event.new(
  name: "Lion’s Den Comedy Car Crash",
  time: "19:00",
  date: "04/05/2021",
  venue: venue_6,
  total_spots: 15,
  bringer: true,
)
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
puts "Created user 7"

venue_7 = Venue.new(
  name: "The Old Crown",
  address: "33 New Oxford St",
  postcode: "WC1A 1BH",
  telephone: "020 7836 9121",
  email: Faker::Internet.email,
  website: "theoldcrownpublichouse.com",
  verified: true,
  user: user_7,
)
puts "Created venue 7"

event_7 = Event.new(
  name: "Rising Stars",
  time: "19:00",
  date: "09/05/2021",
  venue: venue_7,
  total_spots: 12,
  bringer: true,
)
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
puts "Created user 8"

venue_8 = Venue.new(
  name: "South Kensington Comedy Club",
  address: "34a Thurloe Place",
  postcode: "SW7 2HQ",
  telephone: "0800 123 456",
  email: Faker::Internet.email,
  website: "https://www.facebook.com/groups/202142450258959/",
  verified: true,
  user: user_8,
)
puts "Created venue 8"

event_8 = Event.new(
  name: "South Kensington Comedy Club",
  time: "19:00",
  date: "08/05/2021",
  venue: venue_8,
  total_spots: 12,
  bringer: false,
)
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
puts "Created user 9"

venue_9 = Venue.new(
  name: "The Dean Swift",
  address: "10 Gainsford St",
  postcode: "SE1 2NE",
  telephone: "020 3196 6949",
  email: Faker::Internet.email,
  website: "https://www.facebook.com/groups/582408618478799/",
  verified: true,
  user: user_9,
)
puts "Created venue 9"

event_9 = Event.new(
  name: "Funny Feckers",
  time: "19:00",
  date: "06/05/2021",
  venue: venue_9,
  total_spots: 12,
  bringer: true,
)
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
puts "Created user 10"

venue_10 = Venue.new(
  name: "Savoy Tap",
  address: "2 Savoy St",
  postcode: "WC2R 0BA",
  telephone: "020 7836 9738",
  email: Faker::Internet.email,
  website: "https://www.facebook.com/groups/784575835002088/",
  verified: true,
  user: user_10,
)
puts "Created venue 10"

event_10 = Event.new(
  name: "Birdies Comedy",
  time: "19:00",
  date: "07/05/2021",
  venue: venue_10,
  total_spots: 18,
  bringer: true,
)
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
puts "Created user 11"

venue_11 = Venue.new(
  name: "The King’s Head",
  address: "2 Crouch End Hill",
  postcode: "N8 8AA",
  telephone: "01920 823265",
  email: Faker::Internet.email,
  website: "http://www.downstairsatthekingshead.com/Performers.aspx",
  verified: true,
  user: user_11,
)
puts "Created venue 11"

event_11 = Event.new(
  name: "Downstairs at the King’s Head",
  time: "19:00",
  date: "06/05/2021",
  venue: venue_11,
  total_spots: 14,
  bringer: false,
)
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
puts "Created user 12"

venue_12 = Venue.new(
  name: "Up The Creek",
  address: "302 Creek Rd",
  postcode: "SE10 9SW",
  telephone: "020 8858 4581",
  email: "contactus@up-the-creek.com",
  website: "https://up-the-creek.com/",
  verified: true,
  user: user_12,
)
puts "Created venue 12"

event_12 = Event.new(
  name: "The Blackout",
  time: "19:00",
  date: "06/05/2021",
  venue: venue_12,
  total_spots: 12,
  bringer: false,
)
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
puts "Created user 13"

venue_13 = Venue.new(
  name: "The Comedy Store",
  address: "1a Oxendon St",
  postcode: "SW1Y 4EE",
  telephone: "020 7024 2060",
  email: "London@thecomedystore.co.uk",
  website: "https://london.thecomedystore.co.uk/",
  verified: true,
  user: user_13,
)
puts "Created venue 13"

event_13 = Event.new(
  name: "King Gong",
  time: "19:00",
  date: "31/05/2021",
  venue: venue_13,
  total_spots: 20,
  bringer: false,
)
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
puts "Created user 14"

venue_14 = Venue.new(
  name: "The Rose & Crown",
  address: "71-73 Torriano Avenue",
  postcode: "NW5 2SG",
  telephone: "0800 123 456",
  email: Faker::Internet.email,
  website: "http://thefreedomfridge.weebly.com/booking-a-spot.html",
  verified: true,
  user: user_14,
)
puts "Created venue 14"

event_14 = Event.new(
  name: "Freedom Fridge",
  time: "19:00",
  date: "06/05/2021",
  venue: venue_14,
  total_spots: 12,
  bringer: true,
)
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
puts "Created user 15"

venue_15 = Venue.new(
  name: "The Oak & Pastor",
  address: "86 Junction Road",
  postcode: "N19 5QZ",
  telephone: "0800 123 456",
  email: Faker::Internet.email,
  website: "http://jesterjesters.com/",
  verified: true,
  user: user_15,
)
puts "Created venue 15"

event_15 = Event.new(
  name: "Jesters: Raconteur Night",
  time: "19:00",
  date: "05/05/2021",
  venue: venue_15,
  total_spots: 12,
  bringer: false,
)
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
puts "Created user 16"

venue_16 = Venue.new(
  name: "The Grove",
  address: "83 Hammersmith Grove",
  postcode: "W6 0NQ",
  telephone: "020 8748 29661",
  email: Faker::Internet.email,
  website: "https://www.facebook.com/groups/317238835133159/",
  verified: true,
  user: user_16,
)
puts "Created venue 16"

event_16 = Event.new(
  name: "Instant Laughs",
  time: "19:00",
  date: "04/05/2021",
  venue: venue_16,
  total_spots: 12,
  bringer: true,
)
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
puts "Created user 17"

venue_17 = Venue.new(
  name: "The Gregorian",
  address: "96 Jamaica Rd",
  postcode: "SE16 4SQ",
  telephone: "020 7252 0449",
  email: Faker::Internet.email,
  website: "www.thegregorian.co.uk",
  verified: true,
  user: user_17,
)
puts "Created venue 17"

event_17 = Event.new(
  name: "Comedy Gobbledegook",
  time: "19:00",
  date: "11/05/2021",
  venue: venue_17,
  total_spots: 12,
  bringer: true,
)
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
puts "Created user 18"

venue_18 = Venue.new(
  name: "The Vine",
  address: "86 Highgate Rd",
  postcode: "NW5 1PB",
  telephone: "020 7209 0038",
  email: Faker::Internet.email,
  website: "https://www.facebook.com/groups/341746814250/",
  verified: true,
  user: user_18,
)
puts "Created venue 18"

event_18 = Event.new(
  name: "TNT Comedy",
  time: "19:00",
  date: "04/05/2021",
  venue: venue_18,
  total_spots: 12,
  bringer: true,
)
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
puts "Created user 19"

venue_19 = Venue.new(
  name: "The Princess Victoria",
  address: "217 Uxbridge Rd",
  postcode: "W12 9DH",
  telephone: "020 8749 4466",
  email: Faker::Internet.email,
  website: "https://www.facebook.com/groups/107019676090831/",
  verified: true,
  user: user_19,
)
puts "Created venue 19"

event_19 = Event.new(
  name: "Heavenly Comedy",
  time: "19:00",
  date: "05/05/2021",
  venue: venue_19,
  total_spots: 12,
  bringer: false,
)
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
puts "Created user 20"

venue_20 = Venue.new(
  name: "Arch One",
  address: "West Ham Arches",
  postcode: "E16 4BJ",
  telephone: "07969 604094",
  email: "arch1@arch1.co.uk",
  website: "https://www.facebook.com/groups/226354827562684/",
  verified: true,
  user: user_20,
)
puts "Created venue 20"

event_20 = Event.new(
  name: "G&B Comedy",
  time: "19:00",
  date: "04/05/2021",
  venue: venue_20,
  total_spots: 12,
  bringer: true,
)
puts "Created event 20"