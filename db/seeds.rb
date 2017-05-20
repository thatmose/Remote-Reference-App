# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(username: "dev001", password: "password")

20.times do |customer|
  Customer.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.unique.last_name, mobile_number: Faker::Base.numerify("17########"), id_number: Faker::Number.unique.number(8) )
end

10.times do |debt|
  Debt.create!(customer_id: Faker::Number.between(1,20), amount_borrowed: Faker::Number.number(5), amount_paid: Faker::Number.number(3), interest_rate: Faker::Number.between(7,14), loan_duration: Faker::Number.between(6,36))
end