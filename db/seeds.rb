# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning Database"
Bartender.destroy_all
User.destroy_all

puts "Creating Users"
carl = User.create!(first_name: "Carl", last_name: "Schierstaedt", email: "carl@gmail.com", password: "123456", favorite_drink: "Mojito")
august = User.create!(first_name: "August", last_name: "Wanger", email: "august@gmail.com", password: "123456", favorite_drink: "Gin Tonic")
ruben = User.create!(first_name: "Ruben", last_name: "Asmus", email: "ruben@gmail.com", password: "123456", favorite_drink: "Beer")
pauli = User.create!(first_name: "Paul-Henri", last_name: "Eichhorn", email: "pauli@gmail.com", password: "123456", favorite_drink: "Apple Juice")
claire = User.create!(first_name: "Claire", last_name: "Gautier", email: "claire@gmail.com", password: "123456", favorite_drink: "Water")
eva = User.create!(first_name: "Eva", last_name: "Diedonne", email: "eva@gmail.com", password: "123456", favorite_drink: "Tea")
juan = User.create!(first_name: "Juan", last_name: "Delgado", email: "juan@gmail.com", password: "123456", favorite_drink: "Lean")
sebastian = User.create!(first_name: "Sebastian", last_name: "Gustavsson", email: "sebastian@gmail.com", password: "123456", favorite_drink: "Protein shakes")
puts "Users created"

puts "Create Bartenders"
bartender1 = Bartender.create!(user_id: carl.id, city: "Munich", description: "How does the computer know?")
bartender2 = Bartender.create!(user_id: august.id, city: "Stockholm", description: "I played drums in front of the queen")
bartender3 = Bartender.create!(user_id: ruben.id, city: "Berlin", description: "Damn straight!")
bartender4 = Bartender.create!(user_id: pauli.id, city: "Cologne", description: "I did not play drums in front of the queen either.")
bartender5 = Bartender.create!(user_id: eva.id, city: "Paris", description: "I meditate a lot.")
bartender6 = Bartender.create!(user_id: claire.id, city: "Bordeaux", description: "I'm going to Tahiti.")
bartender7 = Bartender.create!(user_id: juan.id, city: "Stockholm", description: "I work on the worlds oldest laptop.")
bartender8 = Bartender.create!(user_id: sebastian.id, city: "Stockholm", description: "Maybe that's a stupid question")
puts "Bartenders created"
