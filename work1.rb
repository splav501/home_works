lines = []
File.open('work1.txt') do  |file|
  lines = file.readlines
end

num_arr = lines.map(&:chomp).map(&:to_i)
even_sum = num_arr.select(&:even?).reduce(:+)
odd_sum = num_arr.select(&:odd?).reduce(:+)

p "Total sum: #{num_arr.sum}"
p "Even sum: #{even_sum}"
p "Odd sum: #{odd_sum}"


File.open('result.txt', 'w') do |file|
  file.write("Total sum: #{num_arr.sum}\n")
  file.write("Even sum: #{even_sum}\n")
  file.write("Odd sum: #{odd_sum}\n")
end
<<<<<<< Updated upstream
 
=======
>>>>>>> Stashed changes
