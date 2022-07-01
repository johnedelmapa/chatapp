# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user = User.new(
    username: "Johnedel Mapa",
    email: "mapajohnedel@gmail.com",
    password: "password",
    password_confirmation: "password" 
)
user.save!

5.times do |n|
    users = User.new(
        username: "user#{n+1}",
        email: "user#{n+1}@gmail.com",
        password: "password",
        password_confirmation: "password" 
    )
    users.save!
end