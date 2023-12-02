require "http"

# puts "City: "
# city = gets.chomp
# data = HTTP.get("https://api.openweathermap.org/data/2.5/weather?q=#{city}&units=imperial&appid=6e543c60ed140e7059b133dbaeab8d99").parse
# true_temp = data["main"]["temp"]
# feels_like = data["main"]["feels_like"]
# difference = true_temp - feels_like
# puts "The difference in temperature from the feels like today is #{difference.round(2)} degrees"


# puts "City: "
# city = gets.chomp
# data = HTTP.get("https://api.openweathermap.org/data/2.5/weather?q=#{city}&units=imperial&appid=6e543c60ed140e7059b133dbaeab8d99").parse
# cloud = data["clouds"]["all"]

# if cloud > 75
#   p "It might be a good idea to carry an umbrella"
# elsif cloud < 25
#   p "Clear skies. Wear sunglasses"
# else
#   p "Mix of clouds and sun"
# end

puts "City: "
city = gets.chomp
data = HTTP.get("https://api.openweathermap.org/data/2.5/weather?q=#{city}&units=imperial&appid=6e543c60ed140e7059b133dbaeab8d99").parse
cloud = data["clouds"]["all"]
true_temp = data["main"]["temp"]
feels_like = data["main"]["feels_like"]
description = data["weather"][0]["description"]

if cloud > 75
  rec = "It might be a good idea to carry an umbrella"
elsif cloud < 25
  rec = "Clear skies. Wear sunglasses"
else
  rec = "Mix of clouds and sun"
end

puts "Today's Summary: "
puts "Temp: #{true_temp} degrees"
puts "Description: "
puts "Feels like: #{feels_like} degrees"
puts "Recommendation: #{rec}"

# if cloud > 75
#   p "It might be a good idea to carry an umbrella"
# elsif cloud < 25
#   p "Clear skies. Wear sunglasses"
# else
#   p "Mix of clouds and sun"
# end