# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Destroying all existing data..."

Flat.destroy_all
# RoomType.destroy_all
# HomeType.destroy_all

# puts "Creating 2 Home Types..."
# puts "Creating 3 Room Types..."
puts "Creating 14 Flats..."

photos = [
          "https://images.unsplash.com/photo-1529408632839-a54952c491e5?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=bdbf4c2018645e98f7ff266db847f999&auto=format&fit=crop&w=1500&q=80",
          "https://images.unsplash.com/photo-1529408686214-b48b8532f72c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=986e2dee5c1b488d877ad7ba1afaf2ec&auto=format&fit=crop&w=1500&q=80",
          "https://images.unsplash.com/photo-1524061614234-8449637d36ce?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=f86f1d40cd6242f8e054bd042f1182fc&auto=format&fit=crop&w=1334&q=80",
          "https://images.unsplash.com/photo-1504624720567-64a41aa25d70?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6547eb1ef8143e823061e60e0247afc2&auto=format&fit=crop&w=1510&q=80",
          "https://images.unsplash.com/photo-1502672260266-1c1ef2d93688?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjIxMTIzfQ&s=0b7d0bd8f37dcc37ebcec50ac6a80519&auto=format&fit=crop&w=1346&q=80",
          "https://images.unsplash.com/photo-1501877008226-4fca48ee50c1?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=1d4a5063d3c1ea03ee6a9f7349e4eba8&auto=format&fit=crop&w=1500&q=80",
          "https://images.unsplash.com/photo-1496664444929-8c75efb9546f?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a3a5e87267175e106954c7e76bd968b9&auto=format&fit=crop&w=1500&q=80",
          "https://images.unsplash.com/photo-1499955085172-a104c9463ece?ixlib=rb-0.3.5&s=00991cd2db7692320d8625fe09391e87&auto=format&fit=crop&w=1500&q=80",
          "https://images.unsplash.com/photo-1495433324511-bf8e92934d90?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=83a01af2dd4929477c40b27ac4d9205c&auto=format&fit=crop&w=1500&q=80",
          "https://images.unsplash.com/photo-1494203484021-3c454daf695d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=87489e9e4b1f12ce68f0c790d2c39682&auto=format&fit=crop&w=1500&q=80"
        ]



# ["Apartment", "House"].each do |name|
#   HomeType.create!(name: name)
# end

# ["Entire Home", "Private Room", "Shared Room"].each do |name|
#   RoomType.create!(name: name)
# end

# 14.times do
#   Flat.create!(title: Faker::TvShows::Simpsons.location,
#    description: Faker::Quotes::Shakespeare.hamlet_quote,
#    price: rand(50..350),
#    street: Faker::Address.street_name,
#    city: Faker::Address.city,
#    zip: Faker::Address.zip,
#    state: Faker::Address.state,
#    user_id: User.first.id,
#    remote_photo_url: photos.sample,
#    acommodates: rand(1..15),
#    home_type_id: rand(5..6),
#    room_type_id: rand(7..9))
# end

Flat.create!(title: "Studio Tram with Courtyard Terrace",
  description: "Discover the charms of living in the heart of Lisbon's old
  city while enjoying the conveniences of a renovated flat. The high ceilings,
  tall windows, and original woodwork are turn-of-the-century, but the kitchen
  and bathrooms are state-of-the-art.",
  price: 150,
  street: "Rua do Conde de Redondo",
  city: "Lisboa",
  zip: "1150-103",
  state: "Lisboa",
  user_id: User.first.id,
  remote_photo_url: photos.sample,
  acommodates: 6,
  home_type_id: 5,
  room_type_id: 8)

Flat.create!(title: "Private Spacious Loft",
  description: "Soak up the natural light spilling into every corner of this
  spacious 19th-century apartment or kick back in the quiet inner courtyard.
  This centrally located home effortlessly combines classic vintage with
  contemporary design and amenities, like free parking, Nespresso machine,
  free wi-fi and can fit 2 adults + 1 child/baby.",
  price: 200,
  street: "Rua de São Bento",
  city: "Lisboa",
  zip: "1200-109",
  state: "Lisboa",
  user_id: User.first.id,
  remote_photo_url: photos.sample,
  acommodates: 6,
  home_type_id: 5,
  room_type_id: 8)


