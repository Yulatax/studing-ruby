greeting = "Hello Everyone!"
puts greeting[0..4]
puts greeting.length
puts greeting.split
numbers = "one,two,three"
puts numbers.split(",")
puts greeting.gsub("Everyone!","Friends!")
puts greeting
modifier = "very "
mood = "excited"
puts "I am #{modifier * 3 + mood} for today's class!"
puts "hello".methods.count
puts :hello.methods.count
5.times do
  puts "Hello, World!"
end

def water_status(minutes)
  if minutes < 7
    puts "The water is not boiling yet."
  elsif minutes == 7
    puts "It's just barely boiling"
  elsif minutes == 8
    puts "It's boiling!"
  else
    puts "Hot! Hot! Hot!"
  end
end

water_status(5)
water_status(7)
water_status(8)
water_status(9)
