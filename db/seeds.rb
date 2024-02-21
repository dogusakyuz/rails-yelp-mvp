# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# require "faker"

# 10.times do
#   attr = {name: Faker::Restaurant.name, address: Faker::Address.city, phone_number: Faker::PhoneNumber.phone_number}
#   restaurant = Restaurant.new(attr)
#   restaurant.save!
# end

puts "Cleaning database..."
Restaurant.destroy_all

pizza_amore = {name: "Pizza Amore", address: "Rome", phone_number: "0123456", category: "italian"}
kendo_sushi = {name: "Kendo Sushi", address: "Osaka", phone_number: "0123457", category: "japanese"}
shangri_la = {name: "Shangri La", address: "Hong Kong", phone_number: "0123458", category: "chinese"}
cafe_poirot = {name: "Cafe Poirot", address: "Brussels", phone_number: "0123459", category: "belgian"}
le_coq = {name: "Le Coq", address: "Marseille", phone_number: "0123450", category: "french"}

[pizza_amore, kendo_sushi, shangri_la, cafe_poirot, le_coq].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
