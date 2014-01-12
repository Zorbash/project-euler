n = 100

sum = (n * (n + 1) / 2)
squared_sum = sum ** 2
sum_squares = (n * (n + 1) * (2 * n + 1)) / 6

puts "sum of squares: #{sum_squares}"
puts "sum: #{sum}"
puts "squared sum: #{squared_sum}"
puts squared_sum - sum_squares
