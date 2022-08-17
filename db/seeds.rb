puts "Cleaning time..."
Restaurant.destroy_all

puts "Seed this sheet"

100.times do
  resto = Restaurant.create!(
    name: Faker::DcComics.hero,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample)
  puts "Created #{resto.name}"
end
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
