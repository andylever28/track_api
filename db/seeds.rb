# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# db/seeds.rb

# Sport.create!([
#   { name: 'Football' },  
#   { name: 'Soccer' },  
#   { name: 'Baseball' },  
#   { name: 'Basketball' },  
#   { name: 'Ice Hockey' }])  
  
#   League.create!([
#     { name: 'National Football League', abbreviation: 'NFL', level: 'Professional', sport_id: 41 },
#     { name: 'College Football', abbreviation: 'NCAAF', level: 'College', sport_id: 42  }
#   ])
  
  User.create(email: 'user@example.com', nickname: 'UOne', name: 'User One', password: "monkey67")