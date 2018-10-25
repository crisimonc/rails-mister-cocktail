# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
require 'open-uri'

# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")

url_ingredient = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"

api_call_ingredient = open(url_ingredient).read
json_ingredient = JSON.parse(api_call_ingredient)

json_ingredient["drinks"].each do |element|
  Ingredient.create(name: element["strIngredient1"])
end