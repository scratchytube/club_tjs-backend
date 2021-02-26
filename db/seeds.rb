require 'pry'
require 'rest-client'
require 'json'

User.destroy_all
Recipe.destroy_all

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

# binding.pry

User.create!(
    name: "Brian",
    username: "bRabbit",
    password: "uno"
)
