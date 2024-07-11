dir =  File.dirname(File.expand_path(__FILE__))
PATH_FILE = dir + "/file.txt"
BUFFER = dir + "/buffer.txt"
PATH_RES = dir + "/results.txt"
File.delete(PATH_RES) if File.exist?(PATH_RES)

def find(age, str_mas)
  File.foreach(PATH_FILE) do |str|
    if str.include?(age) && !str_mas.include?(str)
      puts "added: #{str}"
      str_mas.push(str)
      File.write(PATH_RES, str, mode:"a")
    end
  end
  str_mas
end

def print
  puts "Results.txt: "
  File.foreach(PATH_RES) {|str| puts str}
end


def find_and_write
  str_mas = []
  loop do
    puts "Введите возраст:"
    if ((File.size(PATH_FILE) == File.size(PATH_RES)) if File.exist?(PATH_RES))
      print
      break
    end
    age = gets.to_s
    if age.include?('-1')
      print
      break
    end
    str_mas = find(age, str_mas)
  end
end


find_and_write
