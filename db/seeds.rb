# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

100.times do 
    Toy.create(
        name: Faker::Superhero.name,
        description: Faker::Superhero.descriptor,
        date_posted: Faker::Date.between(from: 5.years.ago, to: 100.days.ago),
        user: Faker::Name.name
    )
end