# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
PlayerMatch.destroy_all
Player.destroy_all 
Match.destroy_all


25.times do 
    Player.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        birth_date: Faker::Date.birthday(18, 65),
        player_ability_rating: [2.5, 3.0, 3.5, 4.0, 4.5, 5.0].sample,
        sex: ['male', 'female'].sample,
        email: Faker::Internet.email
    )
end

10.times do
    Match.create(
        score: "6-#{rand(0..4)}; 6- #{rand(0..4)};",
        completed: true
    )
end


random_match = Match.all.sample
p1 = Player.all.first
p2 = Player.all.last
PlayerMatch.create(match: random_match, player: p1)
PlayerMatch.create(match: random_match, player: p2)