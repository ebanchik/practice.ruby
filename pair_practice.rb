# fav_foods = []
# index = 0

# puts "What is your favorite food?"

# 5.times do
#   food = gets.chomp
#   fav_foods << food
# end

# fav_foods.each_with_index { |food, index| 
# p "#{index + 1 }. I love #{food}"
# }

# p fav_foods

# user_info = [{first_name => "#{first_name}", last_name => "#{lant_name}" , email => "#{email}"}]
user = {}
index = 0

5.times { 
  puts "Enter first name"
  user["first_name"] = gets.chomp
  puts "Enter last name"
  user["last_name"] = gets.chomp
  puts "Enter email"
  user["email"] = gets.chomp
  user[index] += 1  
}

p user