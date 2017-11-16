# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)

# require 'faker'

# a = Ingredient.create(name: "lemon")
# b = Ingredient.create(name: "ice")
# c = Ingredient.create(name: "mint leaves")
# d = Ingredient.create(name: "gin")
# d = Ingredient.create(name: "vodka")
# e = Ingredient.create(name: "ginger beer")
# f = Ingredient.create(name: "cucumber")
# g = Ingredient.create(name: "whisky")
# h = Ingredient.create(name: "white rum")
# i = Ingredient.create(name: "sugar syrup")
# j = Ingredient.create(name: "mango")
# k = Ingredient.create(name: "crushed ice")
# l = Ingredient.create(name: "brown rum")
# m = Ingredient.create(name: "beer")
# n = Ingredient.create(name: "champagne")
# o = Ingredient.create(name: "pineapple juice")
# p = Ingredient.create(name: "maracuja juice")
# q = Ingredient.create(name: "pear vodka")


# 10.times do
#   coc = Cocktail.create!(
#     name: Faker::Coffee.blend_name,
#     )
#   ing = [a, b, c, d, d, e, f, g, h, i, j, k, l, m, n, o, p, q]
#   (2..5).to_a.sample.times do
#     x = ing.sample
#     ing = ing.delete(x)
#     dos = Dose.create!(
#       description: "#{[5, 10, 15, 20, 25, 30].sample} oz",
#       ingredient: x,
#       cocktail: coc
#       )
#   end
# end
