lucky_nums = [0, 5]

lucky_nums.reduce { |acc, num| num / acc} rescue ZeroDivisionError => p
puts p

begin
  lucky_nums["cool"]
rescue TypeError => p
  puts p
end

