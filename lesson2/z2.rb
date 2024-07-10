def how_many
  p "Number: "
  count = gets.to_i
  count
end

def create_mas(count)
  mas = []
  count.times do |temp|
  p "Name: "
  name = gets.to_s.strip
  p "Color: "
  color = gets.to_s.strip
  xash = {"name" => name, "color" => color}
  mas.push(xash)
  end
  mas
end

def print_mas(mas)
  mas.each {|value| puts "#{value["name"]} likes #{value["color"]}"}
end
def main
  count = how_many
  mas = create_mas(count)
  print_mas(mas)
end

main