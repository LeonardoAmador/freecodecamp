def max(*numbers)
  if numbers.count <= 0
    return -1;
  else 
    highest = numbers[0]
    
    for i in numbers
      if i > highest
        highest = i
      end
    end
  end

  return highest
end

puts max(10, 30, 2, 4, 1, 5);