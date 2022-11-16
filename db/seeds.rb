# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_1 = User.create(name: "Will Williamson", email: "will@gmail.com", api_key: "jgn983hy48thw9begh98h4539h4")
user_1.favorites.create(recipe_title: "Recipe: Egyptian Tomato Soup", recipe_link: "http://www.thekitchn.com/recipe-egyptian-tomato-soup-weeknight....", country: "egypt")
user_1.favorites.create(recipe_title: "Crab Fried Rice (Khaao Pad Bpu)", recipe_link: "https://www.tastingtable.com/.....", country: "thailand")