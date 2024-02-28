# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require "open-uri"

Booking.destroy_all
Spot.destroy_all
User.destroy_all

arthur = User.create!(email: 'arthur@mail.com', password: 'coucou')
nicolas = User.create!(email: 'nicolas@mail.com', password: 'coucou')
washington = User.create!(email: 'washington@mail.com', password: 'coucou')

#Spot.create!(name: 'New York Loft', description: 'A spacious and modern loft in the heart of Manhattan', location: 'Lille', price: 100, user: arthur, images: "/app/assets/images/christian-lendl-rf7gT-R9zaE-unsplash.jpg")
#Spot.create!(name: 'American High School', description: 'A classic American high school with a football field and a spacious auditorium',location: 'Paris', price: 2000, user: arthur, images: "https://images.unsplash.com/photo-1583608205776-bfd35f0d9f83?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
#Spot.create!(name: 'Castle', description:'A historic castle with a grand ballroom and a medieval dungeon', location: 'Dunkerque', price: 1000, user: arthur, images: "https://images.unsplash.com/photo-1605276374104-dee2a0ed3cd6?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
#Spot.create!(name: 'Haunted Mansion', description:'A spooky mansion with a history of ghost sightings and eerie sounds', location: 'Lille', price: 200, user: nicolas, images: "https://images.unsplash.com/photo-1558036117-15d82a90b9b1?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
#Spot.create!(name: 'Mountain Chalet', description:'A cozy chalet with a hot tub and a panoramic view of the mountains' ,location: 'Mont Noir', price: 500, user: washington, images: "https://images.unsplash.com/photo-1600585154340-be6161a56a0c?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")



file = URI.open("https://images.unsplash.com/photo-1664261421791-c25c5760f577?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
spot = Spot.new(name: "New York Loft", description: "A spacious and modern loft in the heart of Manhattan", location: "Lille", price: 100, user: arthur)
spot.image.attach(io: file, filename: "nw.png", content_type: "image/png")
spot.save

file_1 = URI.open("https://images.unsplash.com/photo-1543505298-b8be9b52a21a?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
spot = Spot.new(name: "American High School", description: "A classic American high school with a football field and a spacious auditorium", location: "Paris", price: 2000, user: nicolas)
spot.image.attach(io: file_1, filename: "am.png", content_type: "image/png")
spot.save

file_2 = URI.open("https://images.unsplash.com/photo-1514539079130-25950c84af65?q=80&w=2938&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
spot = Spot.new(name: "Castle", description: "A historic castle with a grand ballroom and a medieval dungeon", location: "Dunkerque", price: 1000, user: washington)
spot.image.attach(io: file_2, filename: "ca.png", content_type: "image/png")
spot.save

file_3 = URI.open("https://images.unsplash.com/photo-1598977946456-ae589f348af6?q=80&w=2825&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
spot = Spot.new(name: "Haunted Mansion", description: "A spooky mansion with a history of ghost sightings and eerie sounds", location: "Lille", price: 550, user: arthur)
spot.image.attach(io: file_3, filename: "ha.png", content_type: "image/png")
spot.save

file_4 = URI.open("https://images.unsplash.com/photo-1646376350957-1b2c1813bcab?q=80&w=2948&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
spot = Spot.new(name: "Mountain Chalet", description: "A cozy chalet with a hot tub and a panoramic view of the mountains", location: "Mont Noir", price: 200, user: nicolas)
spot.image.attach(io: file_4, filename: "ha.png", content_type: "image/png")
spot.save
