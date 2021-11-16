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
puts "Users created"

puts "Create Bartenders"
bartender1 = Bartender.create!(user_id: carl.id, city: "Munich", description: "I'm terrible at bartending. Whatever you do do not book me!")
bartender2 = Bartender.create!(user_id: august.id, city: "Stockholm", description: "I played drums in front of the queen")
bartender3 = Bartender.create!(user_id: ruben.id, city: "Berlin", description: "I did not play drums in front of the queen")
puts "Bartenders created"
