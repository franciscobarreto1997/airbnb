# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying all existing data..."

Flat.destroy_all
RoomType.destroy_all
HomeType.destroy_all

puts "Creating 2 Home Types..."
puts "Creating 3 Room Types..."



["Apartment", "House"].each do |name|
  HomeType.create!(name: name)
end

["Entire Home", "Private Room", "Shared Room"].each do |name|
  RoomType.create!(name: name)
end

