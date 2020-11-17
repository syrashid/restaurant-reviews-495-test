puts "Cleaning database..."
Restaurant.destroy_all


puts "Creating restaurants..."

25.times do
  attributes =  { name: Faker::Restaurant.name , address: Faker::Address.full_address, stars: rand(1..5) }
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
  chef = Chef.create!( name: Faker::Artist.name, restaurant: restaurant)
  puts "Chef #{chef.name} was added to #{restaurant.name}"
end

puts "Finished!"
