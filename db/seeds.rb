# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


50.times do
  person = Person.create(
  name: Faker::Name.unique.name,
  age: Faker::Number.between(18,60),
  hair_color: Faker::Color.color_name,
  eye_color: Faker::Color.color_name,
  gender: ["Male", "Female"].sample,
  alive: Faker::Boolean.boolean,
  catchphrase: Faker::Hacker.say_something_smart

  )

  if person.alive
    3.times do
      person.pets.create(
        name: Faker::Name.unique.name,
        animal: ["Dog", "Cat", "Monkey", "Lizard", "Snake", "Ferrett", "Squirrel", "Turtle", "Hamster", "Bear", "Rat", "Tamagotchi"].sample
      )
    end
  end
end
