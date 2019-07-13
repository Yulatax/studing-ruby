alex_height = 180
robert_height = 170
peter_height = 160

if alex_height < robert_height
  puts "Alex lower then Robert"
end

puts "Alex is higher then Robert" if alex_height > robert_height

unless alex_height > robert_height
  puts "Alex is lower then Robert"
end

puts "Alex is lower then Robert" unless alex_height > robert_height

if alex_height < peter_height
  puts "Alex is lower then Peter"
else
  puts "Alex is higher then Peter"
end

if peter_height > alex_height
  puts "Peter is higher then Alex"
elsif peter_height > robert_height
  puts "Peter is higher then Robert"
else
  puts "Peter's small"
end