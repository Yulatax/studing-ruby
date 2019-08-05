# line_num = 0
# File.open('blocks.rb').each do |line|
#   puts "#{line_num += 1}: #{line}"
# end

# a = Proc.new { |x| x = x * 10; puts x }
# b = proc { |x| x = x * 10; puts x }
# puts a.class
# puts b.class
# c = lambda { |x| x = x * 10; puts x }
# puts c.class
# puts a.call(100)
# puts b.call(100)
# puts c.call(100)
# puts a.call(1, 2, 3, 4)
# puts b.call(1, 2, 3, 4)
# puts c.call(4)

# x = 'Hello'
# block = Proc.new { puts x }
# block.call

# def m(block)
#   x = "goodbye"
#   puts "X from method: #{x}"
#   block.call
# end
#
# m(block)

# def m
#   puts "Before block"
#   yield
#   puts "After block"
# end
#
# m {puts "Inside block"}
#
# def caps(str)
#   str.capitalize!
#   yield(str)
# end

# caps('abc') { |str| puts str }

# def caps(str, block)
#   str.capitalize!
#   block.call(str)
# end
# block = lambda{ |x| puts x }
#
# caps "abc", block
#
# def caps(str, &block)
#   str.capitalize!
#   block.call(str)
# end
#
def m(str, &block)
  if block_given?
    yield str
  else
    puts str
  end
end

# m('abc')
m('abc') { |x| x.capitalize!; puts(x) }

