begin
puts 'Before exception'
  Math.sqrt(-1)

rescue StandardError => e
  puts "Exception: #{e.message}"
  puts e.backtrace.inspect
end

puts 'After exception'
