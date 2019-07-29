# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Player.destroy_all 

50.times do 
    Player.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        birth_date: Faker::Date.birthday(18, 65),
        player_ability_rating: [2.5, 3.0, 3.5, 4.0, 4.5, 5.0].sample,
        sex: ['male', 'female'].sample,
    )
end