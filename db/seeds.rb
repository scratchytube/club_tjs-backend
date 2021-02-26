require 'pry'
require 'rest-client'
require 'json'

puts "destroying mister user"
User.destroy_all
puts "destroying the poor recipes"
Recipe.destroy_all
puts "fine destroy the goods"
Good.destroy_all
puts "fine get rid of my favorite everythings"
FavGood.destroy_all
puts "no not my recipes!"
FavRecipe.destroy_all

puts "lemme see those recipes 🍱"
api_response = RestClient.get("https://traderjoeapi.jackgisel.com/api/recipes")
api_data = JSON.parse(api_response)

api_data.each do |recipe|
    Recipe.create!(
        api_id: recipe["id"],
        title: recipe["title"],
        prep_time: recipe["prepTime"],
        cooking_time: recipe["cookingTime"],
        ingredients: recipe["ingredients"],
        directions: recipe["directions"],
        image: recipe["img"],
        servings: recipe["serves"],

    )
end

puts "lemme see that new new"
Good.create!(
    name: "Everything But The Bagel Seasoned Potato Chips",
    image: "https://www.traderjoes.com/TJ_CMS_Content/Images/Digin/Uploads/69082-everything-but-seasoned-chips-WN.jpg",
    likes: "0",
)

# binding.pry

puts "it me"
User.create!(
    name: "Brian",
    username: "bRabbit",
    password: "uno"
)

puts "oh my fav recipes!"
FavRecipe.create!(
    recipe_id: Recipe.all.sample.id,
    user_id: User.all.sample.id,
    note: "",
)

puts "oh the new stuffs!"
FavGood.create!(
    good_id: Good.all.sample.id,
    user_id: User.all.sample.id,
    note: "",
)
