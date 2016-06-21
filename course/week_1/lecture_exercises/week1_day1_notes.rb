#WEEK 1/DAY 1 NOTES

#MAP returns an ARRAY that has been modified. doesn't modify original!
added_one = []
[1,2,3].each do |item|
	total.push(item+1)
end
foods = ["Pizza", "French Fries", "Black Truffles"]
lengths = foods.map do |dish|
	dish.length
end
p foods #p gives an extended print answer in terminal

#other map syntax
added_one = [1,2,3].map do |item|
	item+1
end /