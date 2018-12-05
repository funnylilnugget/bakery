require 'sinatra'
require './bakery.rb'

cookie1 = Cookies.new("Eggnog Cookie", "A festive holiday cookie with a little 'kick'.", "$2.99", "images/eggnog_cookie.jpg")
cookie2 = Cookies.new("Chocolate Chip Cookie", "Everyone love a classic, and why wouldn't they?", "$1.99", "/images/chocolate_chip_cookie.jpg")
cookie3 = Cookies.new("Cookie Dough Cheesecake Bar", "When you need a more then a cookie, but not quite a cake.", "$3.99", "images/cookie_dough_cheesecake_bars.jpg")
cookie4 = Cookies.new("Hazelnut Cookie", "Nothing beats shoving nuts in your mouth", "$2.99", "/images/hazelnut_cookie.jpg")

get "/" do
  erb :index
end

get "/cookie" do

  erb :cookie
end
