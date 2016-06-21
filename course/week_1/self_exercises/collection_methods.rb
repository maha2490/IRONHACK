class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49)
]

homes.each do |place|
	puts "#{place.name} is in #{place.city} \n Price: $ #{place.price} per night."
end

prices = homes.map do |amount|
	amount.price
end

#reduce method for average prices (did second)
average_stay = homes.reduce(0.0) do |stay_total, cost|
	stay_total + cost.price
end

#each for average prices (did first)
total = 0
average = 0
prices.each do |item|
	total += item
end
print "The average amount per night is "
print average = total / prices.length

#reduce method takes two parameters. the fist, sum, is holding the aggregate value thus far which is 0
#the second parameter, hm, represents the item we deal with in each iteration
total_capacities = homes.reduce(0.0) do |sum, hm|
  sum + hm.capacity
end

puts "The average capacity is:"
puts total_capacities / homes.length
