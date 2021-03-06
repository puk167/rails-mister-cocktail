# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'open-uri'
require 'json'
require 'faker'

# Dose.delete_all
Ingredient.delete_all
Cocktail.delete_all

puts 'create Cocktail...'

# 20.times do
#   Cocktail.create(name: Faker::Beer.name)
# end

url = "http://res.cloudinary.com/ihacker/image/upload/v1523002519/p8pv6esr7bmeh96ibblv.jpg"
Cocktail.create(name: 'Mojito', remote_photo_url: url)

url = "http://res.cloudinary.com/ihacker/image/upload/v1523002533/jgsle8gkuuzfotcoig1t.jpg"
Cocktail.create(name: 'Gin Tonic', remote_photo_url: url)

url = "http://res.cloudinary.com/ihacker/image/upload/v1523002532/meqtuemtithij1zya01e.jpg"
Cocktail.create(name: 'Coquetier', remote_photo_url: url)

url = "http://res.cloudinary.com/ihacker/image/upload/v1523002498/fuui6atzgbhp1j1jm5oi.jpg"
Cocktail.create(name: 'Gunpowder plot', remote_photo_url: url)

url = "http://res.cloudinary.com/ihacker/image/upload/v1523002479/wfivyn24ey5jx4mmfceo.jpg"
Cocktail.create(name: 'The crapper', remote_photo_url: url)

url = "http://res.cloudinary.com/ihacker/image/upload/v1523002464/ay4bchrtglu006awyqg5.jpg"
Cocktail.create(name: 'Diamonds are forever', remote_photo_url: url)


puts 'finished Cocktail'

puts 'create Ingredient...'

jsonfile = JSON.parse(open('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read)

ingredient_arr =[]

jsonfile["drinks"].each do |x|
  ingredient_arr << x["strIngredient1"]
end

20.times do
  Ingredient.create(name: ingredient_arr.sample)
end

puts 'finished Ingredient'






