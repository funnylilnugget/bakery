require 'sinatra'
require 'sinatra/reloader'
require './bakery.rb'
require './test.rb'

# Products to be passed in to the array
#  -- Cookies --
cookie1 = Cookies.new("Eggnog Cookie", "A festive holiday cookie with a little 'kick'.", "$2.99", "images/eggnog_cookie.jpg")
cookie2 = Cookies.new("Chocolate Chip Cookie", "Everyone love a classic, and why wouldn't they?", "$1.99", "/images/chocolate_chip_cookie.jpg")
cookie3 = Cookies.new("Cookie Dough Cheesecake Bar", "When you need a more then a cookie, but not quite a cake.", "$3.99", "images/cookie_dough_cheesecake_bars.jpg")
cookie4 = Cookies.new("Hazelnut Cookie", "Nothing beats shoving nuts in your mouth", "$2.99", "/images/hazelnut_cookie.jpg")
#  -- Cakes --
cake1 = Cakes.new("Almond Cake", "You take cake, add some almonds and you have this simple masterpiece.", "$24.99", "/images/almond_cake.jpg")
cake2 = Cakes.new("Black Forest Cake", "Who could complain about getting lost in this forest?", "$29.99", "/images/black_forest_cake.jpg")
cake3 = Cakes.new("Chocolate Raspberry Mousse Cake", "Strawberry Shortcakes got nothing on this one..", "$35.99", "/images/chocolate_raspberry_mousse_cake.jpg")
cake4 = Cakes.new("Red Velvet Cake", "Goes down just a little to easily.", "$24.99", "/images/red_velvet_cake.jpg")
#  -- Cupcakes--
cupcake1 = Cupcakes.new("Banana Split Cupcake", "Just like the ones you used to get as a kid.", "$3.99", "images/banana_split_cupcake.jpg")
cupcake2 = Cupcakes.new("Unicorn Cupcake", "Nothing in life beats unicorns. Unless it's a unicorn cupcake.", "$3.99", "images/unicorn_cupcake.jpg")
cupcake3 = Cupcakes.new("Vegan Cupcake", "Not all of our cupcakes can be perfect.", "$3.99", "images/vegan_cupcake.jpg")
cupcake4 = Cupcakes.new("Pumpkin Spice Cupcake", "It's 'basically' wonderful.", "$3.99", "images/pumpkin_spice_cupcake.jpg")

def email_send(recipient)
  Newsletter.welcome(recipient).deliver_now
end


get "/" do
  erb :index
end


post "/" do
  recipient = params["email"]
  email_send(recipient)

  redirect "/"
end


get "/cookie" do
  erb :cookie
end

get "/cake" do
  erb :cake
end

get "/cupcake" do
  erb :cupcake
end

get "/about" do
  erb :about
end
