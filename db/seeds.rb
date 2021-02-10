# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
ciel_de_paris = {name: 'Ciel de Paris', address: "75012 rue Bergère", category: "french", phone_number: "024578950"}
niiou_youn = {name: 'Niiou youn', address: "Av. Henri Martin", category: "chinese", phone_number: "024693241"}

[ ciel_de_paris, niiou_youn ].each do |attributes|
    restaurant = Restaurant.create!(attributes)
    puts "Created #{restaurant.name}"
end
puts "Finished!"