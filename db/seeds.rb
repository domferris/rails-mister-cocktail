require 'open-uri'
require 'json'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'

puts 'creating ingredients...'

response = JSON.parse(open(url).read)
response['drinks'].each do |drink|
  drink = Ingredient.create(name: drink['strIngredient1'])
  puts "created ingredient #{drink[:name]}"
end

puts 'ingredients created'

60.times do
  Cocktail.new(

  )
end
