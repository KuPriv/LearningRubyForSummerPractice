def greeting
  puts "Введите имя - фамилию - возраст:"
  first_name = gets.chomp
  second_name = gets.chomp
  years = gets.to_i
  if years < 18
    puts "Привет, #{first_name} #{second_name}.Тебе меньше 18 лет, но начать учиться программировать никогда не рано."
  else 
    puts "Привет, #{first_name} #{second_name}. Самое время заняться делом!"
  end
end

greeting