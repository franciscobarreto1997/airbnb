# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying all existing data..."

Flat.destroy_all
Category.destroy_all

puts "Creating 10 test flats..."
puts "Creating 1 test category..."

titles = ["Downtown Private Room", "Beautiful and Luxury 1 Bedroom with Parking!", "Downtown Rooftop Deck", "Private Spacious Loft", "Luxury Modern Waterfront", "1 Bedroom Penthouse", "Downtown Master Suite", "Noice Flat", "Style 2 Bedrrom Studio", "3 Bedroom Condo"]
descriptions = ["nice", "good", "amazing", "fantastic", "great", "very very good", "lots of light", "excelent", "noice", "perfect"]
prices = [200, 500, 250, 700, 100, 80, 150, 345, 1000, 420]
latitudes = [42.40, 35.05, 35.11, 61.13, 33.45, 30.16, 44.47, 39.18, 44.48, 33.30]
longitudes = [73.45, 106.39, 101.50, 149.54, 84.23, 97.44, 117.50, 76.38, 68.47, 71.5]

["Modern", "Luxury", "Seaside", "Vintage"].each do |name|
  Category.create!(name: name)
end




10.times do
  Flat.create!(title: titles.sample, description: descriptions.sample, price: prices.sample, latitude: latitudes.sample, longitude: longitudes.sample, category_id: Category.all.sample.id, user_id: User.first.id)
end
