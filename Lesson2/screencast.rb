=begin
puts "string".object_id
puts "string".object_id
puts "string".object_id == "string".object_id
puts "string" == "string"
puts :symbol1
puts :symbol1.object_id == :symbol1.object_id
puts :symbol1.object_id
puts :symbol1.object_id
=end
=begin
p arr = [1, 2, 3, 4, 5]
p arr2 = [0, 6, 3, "str"]
puts arr.class
puts arr[0]
puts arr[2]
p arr[5]
arr[2] = 40
p arr
puts arr.size
puts arr.any?
puts arr.empty?
arr3 = []
puts arr3.class
puts arr3.empty?
p arr.push(87)
puts arr.length
p arr << 99
puts arr.size
p arr.push("hey")
arr << "hey"
arr << nil
arr << [3, 4, 5]
p arr
puts arr.first
p arr.last
puts arr.delete("hey")
p arr.delete(100)
p arr.delete_at(1)
p arr
p arr.compact!
p arr
p arr.delete_at(-1)
p arr
p arr.max
arr2 = [6, 234, 1, 97, 0, 2, 4, 5, 4, 4]
p arr2.sort
p arr2
p arr2.include?(2)
p arr2.include?(7)
=end

=begin
puts (1..5).class
p ('a'..'d').to_a
p (10..76).to_a
puts ('a'..'f').include?('c')
puts ('a'..'f').include?('z')
=end

=begin
p hash = {a: 1, b: 2}
puts :a.class
p hash[:a]
p hash[:b]
p months = {'january' => 31, 'february' => 28, 'march' => 31}
p months['march']
hash[:a] = 'str'
p hash
p hash[:a]
p hash['a']
p hash[:c]
p hash.keys
p hash.values
p hash[:c] = 45
p hash
p hash.include? :c
p hash.include? :z
p hash.include? 2
p cities = {moscow: ['Dist1', 'Dist2'], spb: ['Dist1', 'Dist2']}
p cities[:spb]
p regions = {77 => {title: 'Moscow', code: 495, time_zone: 0},
             78 => {title: 'Spb', code: 812, time_zone: 0}}
p regions[77]
p regions[77][:title]
p regions[77][:code]
p h = {a: 1, b: 2, c: 3}
p h.to_a
=end

range = (1..5)
for index in range
  puts index
end

index = 0
while index < 5 do
  puts index
  index += 2
end

index = 0
until index > 5 do
  puts index
  index += 2
end

a = [1, 2, 3, 4, 5, 6]
a.each do |index|
  puts index
end

('A'..'Z').each do |letter|
  puts letter
end

('A'..'Z').each {|l| puts l}

l = 'local var'
puts l

('A'..'Z').each {|l| puts l}
puts l

h = {a: 1, b: 2, c: 3}
h.each do |i|
  puts i.inspect
end

h.each do |key, value|
  puts "#{key} = #{value}"
end

new_array = [1, 2, 3, 4, 5].map {|i| i + 2 }
p new_array
new_array = a.map {|i| i + 2}
p new_array
p a
new_array = []
a.each do |i|
  new_array << i + 2
end
p new_array
x = 2
new_array = a.map {|ind| ind + x}
p new_array

loop do
  puts "1. Считаем идеальный вес"
  puts "2. Считаем площадь треугольника"
  puts "0. Выход"
  puts "Выберите вариант: "
  input = gets.to_i
  break if input == 0

  # здесь идет обработка ввода, в зависимости от выбранного варианта
end
