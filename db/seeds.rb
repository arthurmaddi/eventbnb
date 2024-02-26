# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Spot.destroy_all
User.destroy_all

arthur = User.create!(email: 'arthur@mail.com', password: 'coucou')
nicolas = User.create!(email: 'nicolas@mail.com', password: 'coucou')
washington = User.create!(email: 'washington@mail.com', password: 'coucou')

Spot.create!(name: 'Maison de campagne', location: 'Bourgogne', price: 100, user: arthur)
Spot.create!(name: 'Villa cozy', location: 'Paris', price: 1000, user: arthur)
Spot.create!(name: 'Maison de riche', location: 'Marseille', price: 200000, user: nicolas)
Spot.create!(name: 'Appartement de luxe', location: 'Lyon', price: 10000, user: washington)
