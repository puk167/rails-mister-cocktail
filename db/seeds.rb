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

20.times do
  Cocktail.create(name: Faker::Beer.name)
end

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

