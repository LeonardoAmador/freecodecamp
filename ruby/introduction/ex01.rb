def getUserInput()
  numbers = Array.new
  
  for i in 0..1 do
    puts "Enter a number: ";
    num = gets.chomp().to_f
    numbers.push(num)
  end

  return numbers
end

def sum(numbers)
  sum = 0

  for i in numbers do
    sum += i
  end
  
  return sum
end

userNumbers = getUserInput()
puts userNumbers.inspect
puts "Sum of entered numbers: #{sum(userNumbers)}"