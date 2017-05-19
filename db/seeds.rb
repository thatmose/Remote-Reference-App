# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do |customer|
  Customer.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.unique.last_name, mobile_number: Faker::Base.numerify("17########"), id_number: Faker::Number.unique.number(8) )
end