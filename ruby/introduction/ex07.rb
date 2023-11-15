require "timeout"

def perform_operations(operator, *numbers)
  case operator
  when "+"
    numbers.reduce(:+)
  when "-"
    numbers.reduce(:-) || 0
  when "*"
    numbers.reduce(:*) || 1 
  when "/"
    numbers.reduce { |result, num| result / num.to_f } rescue nil
  else
    puts "Invalid operator"
  end
end

def get_user_input
  puts "Enter first number: "
  num1 = gets.chomp().to_f

  puts "Enter operator (+, -, *, /): "
  operator = gets.chomp().downcase

  puts "Enter second number: "
  num2 = gets.chomp().to_f

  return [operator, num1, num2]
end

def main
  loop do
    operator, num1, num2 = get_user_input()
    result = perform_operations(operator, num1, num2)
  
    if result.nil?
      puts "Error in calculation"
    else
      puts "Result: #{result}"  
    end
    
    puts "Enter 0 to continue or -1 to exit: "  
    option = gets.chomp().to_i
    system("clear")
  
    break if option == -1
  end
end

main()