# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Deleting Database..."
Restaurant.destroy_all

puts "Creating new restos..."
5.times do 
  resto = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  )
  puts "#{resto.name} created!"
end

puts "Done!"
