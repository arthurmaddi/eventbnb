# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Booking.destroy_all
Spot.destroy_all
User.destroy_all

arthur = User.create!(email: 'arthur@mail.com', password: 'coucou')
nicolas = User.create!(email: 'nicolas@mail.com', password: 'coucou')
washington = User.create!(email: 'washington@mail.com', password: 'coucou')

Spot.create!(name: 'Maison de campagne', location: 'Bourgogne', price: 100, user: arthur, images: "https://images.unsplash.com/photo-1570129477492-45c003edd2be?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
Spot.create!(name: 'Villa cozy', location: 'Paris', price: 1000, user: arthur, images: "https://images.unsplash.com/photo-1583608205776-bfd35f0d9f83?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
Spot.create!(name: 'Villa cozy', location: 'Paris', price: 1000, user: arthur, images: "https://images.unsplash.com/photo-1605276374104-dee2a0ed3cd6?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
Spot.create!(name: 'Maison de riche', location: 'Marseille', price: 200000, user: nicolas, images: "https://images.unsplash.com/photo-1558036117-15d82a90b9b1?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
Spot.create!(name: 'Appartement de luxe', location: 'Lyon', price: 10000, user: washington, images: "https://images.unsplash.com/photo-1600585154340-be6161a56a0c?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
