File.open("C:/Users/amado/Documents/estudos/home/ruby/working_with_files/employees.txt", "r") do |file|
  for line in file.readlines()
    puts line
  end
end

file = File.open("C:/Users/amado/Documents/estudos/home/ruby/working_with_files/employees.txt", "r")

puts file.read