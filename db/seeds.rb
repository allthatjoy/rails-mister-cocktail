require 'json'
require 'open-uri'

Ingredient.destroy_all
puts 'Creating Ingredients...'
url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'

ingredients_url = open(url).read
ingredients = JSON.parse(ingredients_url)

ingredients['drinks'].each do |hash|
  Ingredient.create(name: "#{hash["strIngredient1"]}")
end

puts 'Finished!'

puts 'Cleaning cocktails database...'
Cocktail.destroy_all

puts 'Creating Cocktails...'
cocktails_names = [
  {
    name:         'Singapore Sling'
  },
  {
    name:         'Aperol Spritz',
  }
]
Cocktail.create!(cocktails_names)
