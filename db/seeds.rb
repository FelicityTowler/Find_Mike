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
