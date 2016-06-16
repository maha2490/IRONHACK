#Classes

class Park
	def initialize(place) #parameter that must be passed when creating class
		@place = place    #initialize step ALWAYS done
	end

	def fee
		puts "Entrance fee is $5"
	end

	def print_name
		puts @place
	end
end

yosemite = Park.new "yosemite"
yosemite.print_name  #using the function as an instance method

#accessor methods

class Zoo
	attr_accessor :zoo_keeper

	def initialize(zoo_keeper)
		@zoo_keeper = zoo_keeper
	end

	def main_attraction
		puts "The main attraction is in the red pavilion"
	end
end
#attr_accessor allows for values to be changed 
my_zoo = Zoo.new("Rachel")  #creates new Zoo class
my_zoo.zoo_keeper = "Francois" #changes zoo_keeper from Rachel to Francois

#Inheritance
class Animal
	def initialze(name)
		@name = name
	end

	def describe
		puts "This animal's name is #{name}"
	end 
end

class Dog < Animal #< sign detnotes inheritance of all of Animal's code
end

class Cat < Animal
end

class Human < Animal 
	def initialize(name, salary)
		super(name)
		@salary = salary
	end
	def describe_with_salary
		puts "This human's name is #{@name} and its salary is #{@salary}"
	end 
end

dog = Dog.new "Winston Furchill"
cat = Cat.new "David Meowie"
human = Human.new "Johnny Appleseed", 12000
dog.describe
cat.describe
human.describe
human.describe_with_salary
	
