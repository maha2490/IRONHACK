# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


lettuce = Ingredient.create(name: "lettuce", calories: "3")
tomato = Ingredient.create(name: "tomato", calories:  "25")
cheddar = Ingredient.create(name: "cheddar cheese", calories: "30")
swiss = Ingredient.create(name: "swiss cheese", calories: "28")
sauce = Ingredient.create(name: "special sauce", calories: "15")

veggie = Sandwich.create(name: "veggie", bread_type: "multigrain")
club = Sandwich.create(name: "club", bread_type: "baguette")

veggie.ingredients.push(lettuce)
veggie.ingredients.push(tomato)
club.ingredients.push(cheddar)
