# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# friend = Friend.create!(
#   name: "Nathan Reline",
#   location: "6325 W Monterey Pl, Chandler, AZ 85225",
#   email: "nathanielreline@gmail.com",
#   phone: "(413) 668-4422"
# )
# friend.save

# pet = Pet.create!(
#   name: "Aki",
#   age: "3",
#   care_instructions: "Dry food in feeder",
#   pet_type: "Cat",
#   friend: friend
# )

5.times do
  friend = Friend.create!(
    name: Faker::Name.unique.name,
    location: Faker::Address.full_address,
    email: Faker::Internet.email,
    phone: Faker::PhoneNumber.cell_phone
  )

  pet = Pet.create!(
    name: Faker::Creature::Cat.name,
    age: Faker::Number.between(from: 1, to: 10),
    care_instructions: Faker::Creature::Dog.meme_phrase,
    pet_type: Faker::Creature::Animal.name,
    friend: friend
  )
end

p "#{Friend.count} friends and #{Pet.count} pets in db"
