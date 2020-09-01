require 'json'
require 'open-uri'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
user_serialized = open(url).read
user = JSON.parse(user_serialized)

Ingredient.delete_all

puts 'ingredients deleted'

user['drinks'].each do |drink|
Ingredient.create(name: drink['strIngredient1'])
end

Ingredient.create(name: "Coke")
Ingredient.create(name: "Tonic")
Ingredient.create(name: "Ice")
puts 'Done'
