#Arrays
animals = ['lions', 'tigers', 'bears']
puts animals
puts animals[2] #returns 'bears' for index value

my_array = [] #blank array
my_array << "A"     
my_array.push "B" #both ways to add items
#Array methods
my_array.delete_at 1 
[3, 4, 9, 12].sort #sorts lowest to highest, alabetical
[apples, oranges, grapes].join(', ')#brings array together
#sort method
letters = ["a", "b", "c", "d"]
letters.sort    #returns sorted array, orignal unchanges
letters.sort!   #returns sorted array and modifies original
#Iterating arrays
numbers = ["one", 16, "twenty"]
numbers.each do |x|
	puts x
end

#Hashes
my_hash = {traveler: "Rachel", transport: "jet" }
another_hash = []
another_hash["ATL"] = "Atlanta"
another_hash["DC"] = "Washington DC"
puts another_hash["ATL"]
 
 #Hash methods
 another_hash.has_key?("ATL")
 another_hash.has_value?("Washington DC")
 my_hash.select { |traveler, rachel| key.include?("t")}
 #Iterating hashes
 my_hash.each do |key, value|
 	puts "#{key} stands for #{value}"
 end