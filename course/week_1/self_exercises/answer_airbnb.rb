#Nizar's answer to collection methods

class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end

#gives us a method that will return a list of homes in the terminal
def print_homes(home_array)
	home_array.each do |the_home|
		puts "#{the_home.name}: #{{the_home.city}}, $ #{the_home.price}, Capacity: #{the_home.capacity}"
	end
end

#======================================================
homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49)
]

input = nil

while input != "exit"
	puts "Type [list], [price], or [capacity] for different sortings."
	puts "What is your selection?"
	input = gets.chomp
#creating these new arrays makes us need to save these to a new variable
#we can use the same format for each conditional statement
	if input == "list"
		homes_by_price = homes.sort_by { |the_home| the the_home.price }    #the_home represents one of the objects inside of the array
		print_homes(homes)
#sort is a bit tricker and needs two parameters
	elsif input == "price"
		highest_to_lowest = homes.sort { |home_a, home_b| home_b.price <=> home_a.price }    #the_home represents one of the objects inside of the array
		print_homes(highest_to_lowest)
	elsif input == "capacity"
		homes_by_capacity = homes.sort_by { |the_home| the the_home.capacity }    #the_home represents one of the objects inside of the array
		print_homes(homes_by_capacity)
	else
		puts "What?"
	end		
end

