dir =  File.dirname(File.expand_path(__FILE__))
PATH = dir + "/file.txt"
BUFFER = dir + "/buffer.txt"
puts "Print all strings:"
def index
  File.foreach(PATH) {|str| puts str}
end

index

puts "Find string and print it."
def find(id)
  File.foreach(PATH).with_index do |same, index|
    puts same if id == index
  end
end

find(1)

puts "ALl find strings with pattern."
def where(pattern)
  mas = []
  File.foreach(PATH).with_index do |str, index|
    mas.push(str) if str.include?(pattern)
  end
  puts mas
end

puts where("31")

puts "Update data in exactly index"
def update(id, text)
  file = File.open(BUFFER, "w")
  File.foreach(PATH).with_index do |str, index|
    file.puts(id == index ? text : str)
  end
  file.close
  
  File.write(PATH, File.read(BUFFER))
  File.delete(BUFFER) if File.exist?(BUFFER)
end

update(4, "new_text")

puts "Pring file text again"
index

puts "Delete string by id"
def delete(id)
  file = File.open(BUFFER, "w")
  File.foreach(PATH).with_index do |str, index|
    file.puts (str if id != index)
  end
  file.close

  File.write(PATH, File.read(BUFFER))
  File.delete(BUFFER) if File.exist?(BUFFER)
end

delete(5)

puts 'Print file text again'
index

puts "Add new string at the end of file"

def create(name)
  File.write(PATH, "#{name}", mode:"a")
end

create("added_string")

puts "Finally file view: "
index