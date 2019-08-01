# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Dog.destroy_all
City.destroy_all
Dogstitter.destroy_all
Stroll.destroy_all

50.times do 
 City.create(name_town: Faker::Adress.city)
end

50.times do 
	Dog.create(name:Faker::FunnyName.name, city_id: rand((City.first.id)..(City.last.id)))
end

30.times do 
	Dogsitter.create(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name, city_id: rand((City.first.id)..(City.last.id)))
end

50.times do 
	Stroll.create(dog: rand((Dog.first.id)..(Dog.last.id)), dogsitter: rand((Dogsitter.first.id)..(Dogsitter.last.id)))
end
