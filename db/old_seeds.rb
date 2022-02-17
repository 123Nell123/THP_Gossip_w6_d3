# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

City.destroy_all
User.destroy_all
Gossip.destroy_all

  
  
  #10 villes en base avec Faker
  10.times do 
    City.create(name: Faker::Address.city, zip_code: rand(35400..35450))
  end

 puts "city done"
  #Tu vas faire 10 utilisateurs en base avec Faker.

10.times do 
    User.create(first_name: Faker::Name.first_name, last_name:Faker::Name.last_name,  description: Faker::Lorem.words, email:Faker::Internet.email, age: rand(10..80), city_id: City.all.sample.id)
  end

  puts "user done"
  #20 gossips en base avec Faker et les lier avec leur auteur.

  20.times do 
    Gossip.create(title: Faker::Movie.quote, content: Faker::Lorem.words, user_id: User.all.sample.id)
  end
  puts "gossip done"