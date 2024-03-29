=begin
Квадратное уравнение.
Пользователь вводит 3 коэффициента a, b и с. Программа вычисляет дискриминант (D)
и корни уравнения (x1 и x2, если они есть) и выводит значения дискриминанта и корней на экран.
 При этом возможны следующие варианты:
  Если D > 0, то выводим дискриминант и 2 корня
  Если D = 0, то выводим дискриминант и 1 корень (т.к. корни в этом случае равны)
  Если D < 0, то выводим дискриминант и сообщение "Корней нет"
Подсказка: Алгоритм решения с блок-схемой (www.bolshoyvopros.ru).
=end

puts "Please, enter a: "
a = gets.chomp.to_i

puts "Please, enter b: "
b = gets.chomp.to_i

puts "Please, enter c: "
c = gets.chomp.to_i

unless a == 0
  d= b**2 - 4*a*c
  if d < 0
    puts "Discriminant = #{d}, no roots"
  else
    if d == 0
      x = -b / 2*a
      puts "Discriminant = #{d}, roots: x1 = x2 = #{x}"
    else
      x1 = (-b + Math.sqrt(d)) / 2*a
      x2 = (-b - Math.sqrt(d)) / 2*a
      puts "Discriminant = #{d}, roots: x1 = #{x1}, x2 = #{x2}"
    end
  end
end
