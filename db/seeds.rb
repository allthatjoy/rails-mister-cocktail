puts 'Cleaning database...'
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

Ingredient.destroy_all

puts 'Creating Ingredients...'
Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
puts 'Finished!'
