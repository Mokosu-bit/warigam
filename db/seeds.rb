# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |n|
  User.create!(
    name: "bot#{n + 1}",
    email: "test#{n + 1}@example.com",
    password: "password#{n + 1}",
    provider: "line",
    uid: "sample#{n + 1}"
  )
end
