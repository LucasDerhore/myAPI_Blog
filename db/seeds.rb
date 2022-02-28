
require 'faker'


User.destroy_all
Article.destroy_all

user = User.create(username: "lucas", password: "123456", age: 29)

30.times do
  article = Article.create(
    title:Faker::Games::WorldOfWarcraft.hero,  
    content:Faker::Games::WorldOfWarcraft.class_name,
    user_id: 5 )
end

puts "LE SEED EST FAIT"