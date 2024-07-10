def foobar(first, second)
  if first == 20 || second == 20
    second
  else first + second
  end
end

puts "Введите два числа:" 
first = gets.to_i
second = gets.to_i
puts foobar(first, second)