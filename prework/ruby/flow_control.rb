#Flow control 
puts "What is your favorite food?"
food = gets.chomp
if food == "Coleslaw"
	print "Nah, that's a side dish."  #can add additional if stmts
elsif food == "Cheesecake"
	print "That's my style!"
else
	"Interesting choice."  #final else is optional
end

#Loops
numbers = [1, 2, 3]
for element in numbers
	puts "#{element}"
end

string = "I hear you like bears."
while string.length < 20
	string = string + 'a'
end
puts "The final string is #{string}"

#Functions
def say_hello(name)
	puts "Hello #{[name]!}"
end
say_hello("Rachel")
say_hello("Elisa")
say_hello("Morphius" + " Man") #returns "Hello Morphius Man!"

def taste(food)
	if food == "bacon"
		puts "That's a trendy choice"
	end
end
#using return. can only be done on last line, otherwise previous code won't execute
def add(a, b)
  calc1 = a + a
  calc2 = a + b
  calc3 = b + b
  return calc1, calc2, calc3
end
puts add(2, 4) #prints 4, 6, 8

#call to execute at end of function
def square(num)
  sqr_num = num * num
  if sqr_num > 100
    return "Number too big!!"
  end
  sqr_num     #t
end