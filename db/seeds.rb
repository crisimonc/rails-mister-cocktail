# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Dose.destroy_all
Cocktail.destroy_all
Ingredient.destroy_all

puts "destroying the world"

require 'json'
require 'open-uri'

# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")

# url_ingredient = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"

# api_call_ingredient = open(url_ingredient).read
# json_ingredient = JSON.parse(api_call_ingredient)

# json_ingredient["drinks"].each do |element|
#   Ingredient.create(name: element["strIngredient1"])
# end

# cocktail_names = ["Gibson", "Gimlet", "Gin & Tonic", "Gin Buck", "Gin Fizz", "Gin Sour", "Greyhound", "Hanky Panky", "John Collins"] 

# cocktail_names.each do |name|
#   Cocktail.create(name: name)
# end

# puts "creating a new world"

# 100.times do
# Dose.create(cocktail_id: Cocktail.all.pluck(:id).sample, ingredient_id: Ingredient.all.pluck(:id).sample, description: "#{rand(100..300)} ml")
# end
20.times do
  url = "https://www.thecocktaildb.com/api/json/v1/1/random.php"

  api_call = open(url).read
  json_cocktails = JSON.parse(api_call)

  json_cocktails["drinks"].each do |element|
    new_cocktail = Cocktail.create(name: element["strDrink"], picture: element["strDrinkThumb"])
    if element["strIngredient1"]
      new_ingredient1 = Ingredient.create(name: element["strIngredient1"])
      Dose.create(description: element["strMeasure1"], cocktail: new_cocktail, ingredient: new_ingredient1)
    end
    if element["strIngredient2"]
      new_ingredient2 = Ingredient.create(name: element["strIngredient2"])
      Dose.create(description: element["strMeasure2"], cocktail: new_cocktail, ingredient: new_ingredient2)
    end
    if element["strIngredient3"]
      new_ingredient3 = Ingredient.create(name: element["strIngredient3"])
      Dose.create(description: element["strMeasure3"], cocktail: new_cocktail, ingredient: new_ingredient3)
    end
    if element["strIngredient4"]
      new_ingredient4 = Ingredient.create(name: element["strIngredient4"])
      Dose.create(description: element["strMeasure4"], cocktail: new_cocktail, ingredient: new_ingredient4)
    end
    if element["strIngredient5"]
      new_ingredient5 = Ingredient.create(name: element["strIngredient5"])
      Dose.create(description: element["strMeasure5"], cocktail: new_cocktail, ingredient: new_ingredient5)
    end
  end
end

puts "creating a new world"


###
# main loop on element
  # create cocktail >> strDrink, strDrinkThumb
  # if element[:strIngredient1]
    #Ingredient.new(name:element[:stringIngredient1])
    #Dose.new(description:element[:strMeasure1], cocktail )
