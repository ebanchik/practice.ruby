require 'csv'

data = CSV.read('/Users/elibanchik/Documents/actualize/practice_ruby/weather.csv', headers: true)

smallest_spread = nil
smallest_day = nil
biggest_spread = 0
index = 2

data.each do |row|
  spread = row['MxT'].to_i - row['MnT'].to_i
  if spread > biggest_spread
    biggest_spread = spread
    smallest_day = row['Dy']
  end
end

puts "The day with the biggest temperature spread is day #{smallest_day}"
puts "The biggest temperature spread is #{biggest_spread}"




# data.each do |row|
#   spread = row['MxT'].to_i - row['MnT'].to_i

#   if smallest_spread.nil? || spread < smallest_spread
#     smallest_spread = spread
#     smallest_day = row["Dy"]
#   end
# end

# puts row['MxT']
# puts "The day with the smallest temperature spread is day #{smallest_day}"