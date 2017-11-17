# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

include CloudinaryHelper

a = Ingredient.create(name: "lemon")
b = Ingredient.create(name: "ice")
c = Ingredient.create(name: "mint leaves")
d = Ingredient.create(name: "gin")
d = Ingredient.create(name: "vodka")
e = Ingredient.create(name: "ginger beer")
f = Ingredient.create(name: "cucumber")
g = Ingredient.create(name: "whisky")
h = Ingredient.create(name: "white rum")
i = Ingredient.create(name: "sugar syrup")
j = Ingredient.create(name: "mango")
k = Ingredient.create(name: "crushed ice")
l = Ingredient.create(name: "brown rum")
m = Ingredient.create(name: "beer")
n = Ingredient.create(name: "champagne")
o = Ingredient.create(name: "pineapple juice")
p = Ingredient.create(name: "maracuja juice")
q = Ingredient.create(name: "pear vodka")


flav = ["salty", "sweet", "bitter", "soure", "spicy", "sparkling", "shiny", "dirty", "dark", "light", "hot", "sexy"]

photo_array = ["Blue_kkgx9w", "brown_zropzd", "green_vkpj0h", "light_z2a2hr", "light2_pk0dil", "orange_onwyvv", "orange2_cruyxr", "red_q5h8km", "white_zdy4n4", "yellow_yypkm2"]
counter = 0

10.times do
  coc = Cocktail.create!(
    name: flav.sample + " " + Faker::Color.color_name + " " + Faker::Coffee.blend_name,
    )
  ing = [a, b, c, d, d, e, f, g, h, i, j, k, l, m, n, o, p, q].shuffle
  (2..5).to_a.sample.times do
    dos = Dose.create!(
      description: "#{[5, 10, 15, 20, 25, 30].sample} oz",
      ingredient: ing.pop,
      cocktail: coc
      )
  end

  coc.remote_photo_url = cl_image_path(photo_array[counter])
  coc.save!
  counter += 1

end
