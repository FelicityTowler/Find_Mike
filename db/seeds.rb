# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
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
  biography: "I'm pretty new to comedy. Thought I'd give it a bash.",
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
  first_name: "",
  last_name: "",
  stage_name: "",
  email: "",
  password: "",
  telephone: "0800 123 456",
  city: "London",
  biography: "I'm pretty new to comedy. Thought I'd give it a bash.",
  dependability: 4.5,
)
puts "Created user 2"

venue_2 = Venue.new(
  name: "",
  address: "",
  postcode: "",
  telephone: "",
  email: "",
  website: "",
  verified: true,
  user: user_2,
)
puts "Created venue 2"

event_2 = Event.new(
  name: "",
  time: "19:00",
  date: "03/05/2021",
  venue: venue_2,
  total_spots: 12,
  bringer: true,
)
puts "Created event 2"

user_3 = User.create!(
  first_name: "",
  last_name: "",
  stage_name: "",
  email: "",
  password: "",
  telephone: "0800 123 456",
  city: "London",
  biography: "I'm pretty new to comedy. Thought I'd give it a bash.",
  dependability: 4.5,
)
puts "Created user 3"

venue_3 = Venue.new(
  name: "",
  address: "",
  postcode: "",
  telephone: "",
  email: "",
  website: "",
  verified: true,
  user: user_3,
)
puts "Created venue 3"

event_3 = Event.new(
  name: "",
  time: "19:00",
  date: "03/05/2021",
  venue: venue_3,
  total_spots: 12,
  bringer: true,
)
puts "Created event 3"


user_4 = User.create!(
  first_name: "",
  last_name: "",
  stage_name: "",
  email: "",
  password: "",
  telephone: "0800 123 456",
  city: "London",
  biography: "I'm pretty new to comedy. Thought I'd give it a bash.",
  dependability: 4.5,
)
puts "Created user 4"

venue_4 = Venue.new(
  name: "",
  address: "",
  postcode: "",
  telephone: "",
  email: "",
  website: "",
  verified: true,
  user: user_4,
)
puts "Created venue 4"

event_4 = Event.new(
  name: "",
  time: "19:00",
  date: "03/05/2021",
  venue: venue_4,
  total_spots: 12,
  bringer: true,
)
puts "Created event 4"

user_5 = User.create!(
  first_name: "",
  last_name: "",
  stage_name: "",
  email: "",
  password: "",
  telephone: "0800 123 456",
  city: "London",
  biography: "I'm pretty new to comedy. Thought I'd give it a bash.",
  dependability: 4.5,
)
puts "Created user 5"

venue_5 = Venue.new(
  name: "",
  address: "",
  postcode: "",
  telephone: "",
  email: "",
  website: "",
  verified: true,
  user: user_5,
)
puts "Created venue 5"

event_5 = Event.new(
  name: "",
  time: "19:00",
  date: "03/05/2021",
  venue: venue_5,
  total_spots: 12,
  bringer: true,
)
puts "Created event 5"

user_6 = User.create!(
  first_name: "",
  last_name: "",
  stage_name: "",
  email: "",
  password: "",
  telephone: "0800 123 456",
  city: "London",
  biography: "I'm pretty new to comedy. Thought I'd give it a bash.",
  dependability: 4.5,
)
puts "Created user 6"

venue_6 = Venue.new(
  name: "",
  address: "",
  postcode: "",
  telephone: "",
  email: "",
  website: "",
  verified: true,
  user: user_6,
)
puts "Created venue 6"

event_6 = Event.new(
  name: "",
  time: "19:00",
  date: "03/05/2021",
  venue: venue_6,
  total_spots: 12,
  bringer: true,
)
puts "Created event 6"

user_7 = User.create!(
  first_name: "",
  last_name: "",
  stage_name: "",
  email: "",
  password: "",
  telephone: "0800 123 456",
  city: "London",
  biography: "I'm pretty new to comedy. Thought I'd give it a bash.",
  dependability: 4.5,
)
puts "Created user 7"

venue_7 = Venue.new(
  name: "",
  address: "",
  postcode: "",
  telephone: "",
  email: "",
  website: "",
  verified: true,
  user: user_7,
)
puts "Created venue 7"

event_7 = Event.new(
  name: "",
  time: "19:00",
  date: "03/05/2021",
  venue: venue_7,
  total_spots: 12,
  bringer: true,
)
puts "Created event 7"


user_8 = User.create!(
  first_name: "",
  last_name: "",
  stage_name: "",
  email: "",
  password: "",
  telephone: "0800 123 456",
  city: "London",
  biography: "I'm pretty new to comedy. Thought I'd give it a bash.",
  dependability: 4.5,
)
puts "Created user 8"

venue_8 = Venue.new(
  name: "",
  address: "",
  postcode: "",
  telephone: "",
  email: "",
  website: "",
  verified: true,
  user: user_8,
)
puts "Created venue 8"

event_8 = Event.new(
  name: "",
  time: "19:00",
  date: "03/05/2021",
  venue: venue_8,
  total_spots: 12,
  bringer: true,
)
puts "Created event 8"

user_9 = User.create!(
  first_name: "",
  last_name: "",
  stage_name: "",
  email: "",
  password: "",
  telephone: "0800 123 456",
  city: "London",
  biography: "I'm pretty new to comedy. Thought I'd give it a bash.",
  dependability: 4.5,
)
puts "Created user 9"

venue_9 = Venue.new(
  name: "",
  address: "",
  postcode: "",
  telephone: "",
  email: "",
  website: "",
  verified: true,
  user: user_9,
)
puts "Created venue 9"

event_9 = Event.new(
  name: "",
  time: "19:00",
  date: "03/05/2021",
  venue: venue_9,
  total_spots: 12,
  bringer: true,
)
puts "Created event 9"



user_10 = User.create!(
  first_name: "",
  last_name: "",
  stage_name: "",
  email: "",
  password: "",
  telephone: "0800 123 456",
  city: "London",
  biography: "I'm pretty new to comedy. Thought I'd give it a bash.",
  dependability: 4.5,
)
puts "Created user 10"

venue_10 = Venue.new(
  name: "",
  address: "",
  postcode: "",
  telephone: "",
  email: "",
  website: "",
  verified: true,
  user: user_10,
)
puts "Created venue 10"

event_10 = Event.new(
  name: "",
  time: "19:00",
  date: "03/05/2021",
  venue: venue_10,
  total_spots: 12,
  bringer: true,
)
puts "Created event 10"

user_11 = User.create!(
  first_name: "",
  last_name: "",
  stage_name: "",
  email: "",
  password: "",
  telephone: "0800 123 456",
  city: "London",
  biography: "I'm pretty new to comedy. Thought I'd give it a bash.",
  dependability: 4.5,
)
puts "Created user 11"

venue_11 = Venue.new(
  name: "",
  address: "",
  postcode: "",
  telephone: "",
  email: "",
  website: "",
  verified: true,
  user: user_11,
)
puts "Created venue 11"

event_11 = Event.new(
  name: "",
  time: "19:00",
  date: "03/05/2021",
  venue: venue_11,
  total_spots: 12,
  bringer: true,
)
puts "Created event 11"


user_12 = User.create!(
  first_name: "",
  last_name: "",
  stage_name: "",
  email: "",
  password: "",
  telephone: "0800 123 456",
  city: "London",
  biography: "I'm pretty new to comedy. Thought I'd give it a bash.",
  dependability: 4.5,
)
puts "Created user 12"

venue_12 = Venue.new(
  name: "",
  address: "",
  postcode: "",
  telephone: "",
  email: "",
  website: "",
  verified: true,
  user: user_12,
)
puts "Created venue 12"

event_12 = Event.new(
  name: "",
  time: "19:00",
  date: "03/05/2021",
  venue: venue_12,
  total_spots: 12,
  bringer: true,
)
puts "Created event 12"

user_13 = User.create!(
  first_name: "",
  last_name: "",
  stage_name: "",
  email: "",
  password: "",
  telephone: "0800 123 456",
  city: "London",
  biography: "I'm pretty new to comedy. Thought I'd give it a bash.",
  dependability: 4.5,
)
puts "Created user 13"

venue_13 = Venue.new(
  name: "",
  address: "",
  postcode: "",
  telephone: "",
  email: "",
  website: "",
  verified: true,
  user: user_13,
)
puts "Created venue 13"

event_13 = Event.new(
  name: "",
  time: "19:00",
  date: "03/05/2021",
  venue: venue_13,
  total_spots: 12,
  bringer: true,
)
puts "Created event 13"



user_14 = User.create!(
  first_name: "",
  last_name: "",
  stage_name: "",
  email: "",
  password: "",
  telephone: "0800 123 456",
  city: "London",
  biography: "I'm pretty new to comedy. Thought I'd give it a bash.",
  dependability: 4.5,
)
puts "Created user 14"

venue_14 = Venue.new(
  name: "",
  address: "",
  postcode: "",
  telephone: "",
  email: "",
  website: "",
  verified: true,
  user: user_14,
)
puts "Created venue 14"

event_14 = Event.new(
  name: "",
  time: "19:00",
  date: "03/05/2021",
  venue: venue_14,
  total_spots: 12,
  bringer: true,
)
puts "Created event 14"

user_15 = User.create!(
  first_name: "",
  last_name: "",
  stage_name: "",
  email: "",
  password: "",
  telephone: "0800 123 456",
  city: "London",
  biography: "I'm pretty new to comedy. Thought I'd give it a bash.",
  dependability: 4.5,
)
puts "Created user 15"

venue_15 = Venue.new(
  name: "",
  address: "",
  postcode: "",
  telephone: "",
  email: "",
  website: "",
  verified: true,
  user: user_15,
)
puts "Created venue 15"

event_15 = Event.new(
  name: "",
  time: "19:00",
  date: "03/05/2021",
  venue: venue_15,
  total_spots: 12,
  bringer: true,
)
puts "Created event 15"


user_16 = User.create!(
  first_name: "",
  last_name: "",
  stage_name: "",
  email: "",
  password: "",
  telephone: "0800 123 456",
  city: "London",
  biography: "I'm pretty new to comedy. Thought I'd give it a bash.",
  dependability: 4.5,
)
puts "Created user 16"

venue_16 = Venue.new(
  name: "",
  address: "",
  postcode: "",
  telephone: "",
  email: "",
  website: "",
  verified: true,
  user: user_16,
)
puts "Created venue 16"

event_16 = Event.new(
  name: "",
  time: "19:00",
  date: "03/05/2021",
  venue: venue_16,
  total_spots: 12,
  bringer: true,
)
puts "Created event 16"

user_17 = User.create!(
  first_name: "",
  last_name: "",
  stage_name: "",
  email: "",
  password: "",
  telephone: "0800 123 456",
  city: "London",
  biography: "I'm pretty new to comedy. Thought I'd give it a bash.",
  dependability: 4.5,
)
puts "Created user 17"

venue_17 = Venue.new(
  name: "",
  address: "",
  postcode: "",
  telephone: "",
  email: "",
  website: "",
  verified: true,
  user: user_17,
)
puts "Created venue 17"

event_17 = Event.new(
  name: "",
  time: "19:00",
  date: "03/05/2021",
  venue: venue_17,
  total_spots: 12,
  bringer: true,
)
puts "Created event 17"

user_18 = User.create!(
  first_name: "",
  last_name: "",
  stage_name: "",
  email: "",
  password: "",
  telephone: "0800 123 456",
  city: "London",
  biography: "I'm pretty new to comedy. Thought I'd give it a bash.",
  dependability: 4.5,
)
puts "Created user 18"

venue_18 = Venue.new(
  name: "",
  address: "",
  postcode: "",
  telephone: "",
  email: "",
  website: "",
  verified: true,
  user: user_18,
)
puts "Created venue 18"

event_18 = Event.new(
  name: "",
  time: "19:00",
  date: "03/05/2021",
  venue: venue_18,
  total_spots: 12,
  bringer: true,
)
puts "Created event 18"

user_19 = User.create!(
  first_name: "",
  last_name: "",
  stage_name: "",
  email: "",
  password: "",
  telephone: "0800 123 456",
  city: "London",
  biography: "I'm pretty new to comedy. Thought I'd give it a bash.",
  dependability: 4.5,
)
puts "Created user 19"

venue_19 = Venue.new(
  name: "",
  address: "",
  postcode: "",
  telephone: "",
  email: "",
  website: "",
  verified: true,
  user: user_19,
)
puts "Created venue 19"

event_19 = Event.new(
  name: "",
  time: "19:00",
  date: "03/05/2021",
  venue: venue_19,
  total_spots: 12,
  bringer: true,
)
puts "Created event 19"

user_20 = User.create!(
  first_name: "",
  last_name: "",
  stage_name: "",
  email: "",
  password: "",
  telephone: "0800 123 456",
  city: "London",
  biography: "I'm pretty new to comedy. Thought I'd give it a bash.",
  dependability: 4.5,
)
puts "Created user 20"

venue_20 = Venue.new(
  name: "",
  address: "",
  postcode: "",
  telephone: "",
  email: "",
  website: "",
  verified: true,
  user: user_20,
)
puts "Created venue 20"

event_20 = Event.new(
  name: "",
  time: "19:00",
  date: "03/05/2021",
  venue: venue_20,
  total_spots: 12,
  bringer: true,
)
puts "Created event 20"