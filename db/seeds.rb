# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

papasidos = Restaurant.create(name: "Papasidos", description: "Spanish restaurant for family", city: "NY", star_rating: 3, cuisine: "Spanish")
mastros = Restaurant.create(name: "Mastros", description: "Very fancy place", city: "Houston", star_rating: 5, cuisine: "American")
steak48 = Restaurant.create(name: "Steak48", description: "Amazing food", city: "Philly", star_rating: 4, cuisine: "American")
ruths = Restaurant.create(name: "Ruth's Chris Steakhouse", description: "all over the country", city: "New Orleans", star_rating: 5, cuisine: "Mediterenian")
