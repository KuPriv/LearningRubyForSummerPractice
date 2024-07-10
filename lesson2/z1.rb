word = ARGV[0].to_s
if word.slice(word.size - 2, word.size - 1) == "cs"
    ans = 2
    word.size.times do |temp|
      ans *= 2
    end
    puts ans
else 
  puts word.reverse
end

