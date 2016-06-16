#Creating variables
my_variable = 16
another_variable = "Fifteen"

#String interpolation
name = "Rachel"
puts "Hi #{name}"
#with user input
puts "What's your name?"
name = gets.chomp
puts "Hello, #{name}."

puts "Give me a number"
first_number = gets.chomp.to_i #returns answer as integer. in case "Ten" was entered
puts "Give me another number"
second_number = gets.chomp.to_i
puts "#{first_number} x #{second_number}" = "#{first_number * second_number}"

#accessing other files
file_contents = IO.read("ruby.rb")
puts "The source file contains #{file_contents}"
#creating a file
puts "What is your favorite animal?"
animal = gets.chomp
IO.write('name.txt', name)