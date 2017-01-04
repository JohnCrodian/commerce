# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do

name = Faker::Commerce.product_name
description = "Oh man, such a great product. Excellent."
category = Faker::Commerce.department
price = Faker::Commerce.price

Product.create(name: name, description: description, category: category, price: price)

end

10.times do
fname = Faker::Name.first_name
lname = Faker::Name.last_name

User.create(fname: fname, lname: lname, email:"Frenchie9000@waxworks.com", password: "password")
end