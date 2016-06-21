#app.rb
require_relative("lib/login.rb")

puts ""
puts "Please login to the treasure chest."
puts ""
puts "Username:"
username = gets.chomp

puts "Password:"
password = gets.chomp

my_login = Login.new

#make loop so login fail will set back to login prompt
user_answer = my_login.validate(username, password) #true/false answer
	while user_answer == "LOCKOUT" do
		puts "Please again login to the treasure chest."
		puts ""
		puts "Please login to the treasure chest."
		puts ""
		puts "Username:"
		username = gets.chomp
		puts "Password:"
		password = gets.chomp
		user_answer = my_login.validate(username, password)
	end