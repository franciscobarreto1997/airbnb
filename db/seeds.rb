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
                "Soak up the natural light spilling into every corner of this spacious 19th-century apartment or kick back
                 in the quiet inner courtyard. This centrally located home effortlessly combines classic vintage with contemporary
                 design and amenities.2 guestsStudio2 beds1 bath",
                "Wake up to the unique light of Lisbon at a historic building in the heart of pedestrian Alfama. Get lost in a book
                 by the window, or head out through the bright orange door on a mission to find the perfect Portuguese custard tart.",
                "Relax in style at this cozy ground-floor apartment situated in a small, traditional building in historic Madragoa.
                 Crisp, white walls, hardwood floors, and patterned tiles give this home an authentic and inviting Portuguese feel.",
                "Discover the charms of living in the heart of Lisbon's old city while enjoying the conveniences of a renovated flat.
                 The high ceilings, tall windows, and original woodwork are turn-of-the-century, but the kitchen and bathrooms are state-of-the-art.",
                "Start the day under a steaming rain shower in a bathroom lined with stone in this fully restored and charming Martim Vaz studio. Enjoy
                 breakfast on the balcony while admiring stunning views of São Jorge Castle.",
                "Unwind in this first-floor designer apartment featuring eclectic and carefully curated decor, elegant furnishings, and a spacious
                 open-plan layout. Soak up the natural light at the dining table, or fix a picnic meal and head to the nearby park.",
                "Throw open the windows and let a soft breeze glide through this calm, radiant apartment. Sprawl out on a leather couch
                 and find your center amid modern furnishings and vaulted ceilings. Move to the romantic, rose-colored patio for drinks at sundown.",
                "Soak up the sun on the terrace outside this open-plan studio apartment. After enjoying some fresh air, retreat in for a meal and a
                chilled glass of Portuguese wine in the functional kitchen. Guests will love the central location and indoor parking.",
                "Drink in the great aerial views of Lisbon while enjoying a glass of wine or cup of coffee on the terrace. Then head back in to enjoy
                 the modern conveniences that are evident throughout this well-decorated, air-conditioned, and heated apartment.",
                "This duplex apartment with a patio is on the 4th and last floor of a building in Chiado. It was just entirely renovated. A very comfortable
                 lounge area with a Patio and a kitchenette and a bathroom on the lower floor. It is the ideal place to stay!"
              ]
prices = [200, 500, 250, 700, 100, 80, 150, 345, 1000, 420]
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

addresses = [
              "R. Moeda 7, 1200-109 Lisboa",
              "Av. 24 de Julho s/n, 1200-481 Lisboa",
              "R. da Misericórdia 9, 1200-283 Lisboa",
              "R. Dom Pedro V Nº56-D, 1250-094 Lisboa",
              "Largo do Intendente Pina Manique 45, 1100-285 Lisboa",
              "Tv. do Monte 26, 1170-108 Lisboa",
              "Terreiro do Paço – Ala Nascente nº 62 a 65, 1100-148 Lisboa",
              "Rua dos Bacalhoeiros, 10, 1100-135 Lisboa",
              "Praça do Príncipe Real 5, 1250-096 Lisboa",
              "Rua de Arroios 25, 1150-053 Lisboa",
              "Av. 24 de Julho 68, 1200-869 Lisboa"
          ]

# ["Modern", "Luxury", "Seaside", "Vintage"].each do |name|
#   Category.create!(name: name)
# end

["Modern"].each do |name|
  Category.create!(name: name)
end

# 10.times do
#   Flat.create!(
#                 title: titles.sample,
#                 description: descriptions.sample,
#                 price: prices.sample,
#                 latitude: latitudes.sample,
#                 longitude: longitudes.sample,
#                 category_id: Category.all.sample.id,
#                 user_id: User.first.id,
#                 remote_photo_url: photos.sample
#               )
# end

titles.zip(descriptions, prices, addresses, photos).each do |title, description, price, address, photo|
  Flat.create!(title: title, description: description, price: price, address: address, category_id: Category.all.sample.id, user_id: User.first.id, remote_photo_url: photo)
end
