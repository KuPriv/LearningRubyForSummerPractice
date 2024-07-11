CONST_BAL = 100
dir =  File.dirname(File.expand_path(__FILE__))
PATH= dir + "/balance.txt"
BUFFER = dir + "/buffer.txt"

def create_file
  File.write(PATH, CONST_BAL)
  File.write(BUFFER, CONST_BAL)
end

def deposit
  num = File.read(BUFFER).to_i
  puts "How much you want to deposit?"
  col = gets.to_i
  if col > 0
    File.write(BUFFER, num + col)
  end
end

def withdraw
  num = File.read(BUFFER).to_i
  puts "How much you want to withdraw?"
  col = gets.to_i
  if col > 0 && col <= num
    File.write(BUFFER, num - col)
  end
end

def balance
  puts File.read(BUFFER).to_i
end

def quit
  num = File.read(BUFFER).to_i
  File.write(PATH, num)
  File.delete(BUFFER) if File.exist?(BUFFER)
  exit
end

def main
  create_file
  loop do
    puts "Choose operation: "
    puts "D - deposit, W - withdraw, B - balance, Q - quit"
    operation = gets.to_s.strip.upcase
    if operation == "D"
      deposit
    elsif operation == "W"
      withdraw
    elsif operation == "B"
      balance
    elsif operation == "Q"
      quit
    else 
      puts "Command is not correct!"
    end
  end
end

main