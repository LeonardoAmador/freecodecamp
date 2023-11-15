# File.open("C:/Users/amado/Documents/estudos/home/ruby/working_with_files/employees.txt", "a") do |file|
#   file.write("\nLeonardo Amador, Manager")
# end

File.open("C:/Users/amado/Documents/estudos/home/ruby/working_with_files/employees.txt", "r+") do |file|
  file.readchar()
  file.write("Hi")
end