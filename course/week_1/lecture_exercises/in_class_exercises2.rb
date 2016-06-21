#exercises

classmates = [Min, Alberto, John]

classmates.each do |name|
	puts "Good morning, welcome to Ironhack #{name}!"
end

home_cities = ["boston", "houston", "new york city", "bogota"]

home_cities.map do |city|
	#test to see if item has spaces
	if city.include?(" ") == true
		city.gsub()
	else
	#using the .upcase method for single words
	city.upcase
end