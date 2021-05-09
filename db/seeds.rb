# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Seed data for Category
appetizer = Category.create(name: "Appetizer")
breakfast = Category.create(name: "Breakfast")
entree = Category.create(name: "Entree")
soup = Category.create(name: "Soup and Stew")
dessert = Category.create(name: "Dessert")


# Seed data for Recipe

pannukakku = Recipe.create(name: "Pannukakku", directions: "Preheat oven to 350 degrees.
Melt butter in oven in a 9x13 pan; should be sizzling when you take it out.
Meanwhile, mix other ingredients like hell - till very frothy. Pour batter into pan with melted butter.
Bake 40 minutes. Eat immediately.", category_id: breakfast.id)

butter = Ingredient.create(name: "6 tablespoons butter", recipe_id: pannukakku.id)
flour = Ingredient.create(name: "1 cup flour", recipe_id: pannukakku.id)
sugar = Ingredient.create(name: "3/4 cup sugar",recipe_id: pannukakku.id)
eggs = Ingredient.create(name: "4 eggs", recipe_id: pannukakku.id)
milk = Ingredient.create(name: "2 cups milk", recipe_id: pannukakku.id)
vanilla = Ingredient.create(name: "1 tablespoon vanilla extract", recipe_id: pannukakku.id)
