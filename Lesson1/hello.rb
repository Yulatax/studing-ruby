puts "What is your name?"
name = gets.chomp

puts "What is the year of your birthday?"
year = gets.chomp

puts "#{name}, hello! You are #{2019 - year.to_i} years old."
