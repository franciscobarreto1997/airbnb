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

puts "Creating 30 test flats..."
puts "Creating 4 test categories..."

titles = [
          "Downtown Private Room",
          "Beautiful and Luxury 1 Bedroom with Parking!",
          "Downtown Rooftop Deck",
          "Private Spacious Loft",
          "Luxury Modern Waterfront",
          "1 Bedroom Penthouse", "Downtown Master Suite",
          "Noice Flat",
          "Style 2 Bedrrom Studio",
          "3 Bedroom Condo"
          ]
descriptions = [
                "nice",
                "good",
                "amazing",
                "fantastic",
                "great",
                "very very good",
                "lots of light",
                "excelent",
                "noice",
                "perfect"
              ]
prices = [200, 500, 250, 700, 100, 80, 150, 345, 1000, 420]
latitudes = [42.40, 35.05, 35.11, 61.13, 33.45, 30.16, 44.47, 39.18, 44.48, 33.30]
longitudes = [73.45, 106.39, 101.50, 149.54, 84.23, 97.44, 117.50, 76.38, 68.47, 71.5]
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

["Modern", "Luxury", "Seaside", "Vintage"].each do |name|
  Category.create!(name: name)
end


30.times do
  Flat.create!(
                title: titles.sample,
                description: descriptions.sample,
                price: prices.sample,
                latitude: latitudes.sample,
                longitude: longitudes.sample,
                category_id: Category.all.sample.id,
                user_id: User.first.id,
                remote_photo_url: photos.sample
              )
end
