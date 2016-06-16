starting_point = 0
while starting_point < 100
	starting_point = starting_point + 1
	if starting_point % 3 == 0
		puts "fizz"
	elsif starting_point % 5 == 0
		puts "buzz"
	elsif starting_point % 3 == 0 && starting_point % 5 == 0
		puts "fizzbuzz"
	else 
		puts starting_point	
	end
end
