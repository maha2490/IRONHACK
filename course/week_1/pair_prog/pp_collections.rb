# PP EXERCISE
class ProgrammingLanguage
  attr_accessor :name, :age, :type
  def initialize(name, age, type)
    @name = name
    @age = age
    @type = type
  end

end

#main method
puts ""
puts ""

ruby = ProgrammingLanguage.new("Ruby", 21, "Dynamic")
python = ProgrammingLanguage.new("Python", 24, "Dynamic")
javascript = ProgrammingLanguage.new("JavaScript", 20, "Dynamic")
go = ProgrammingLanguage.new("Go", 6, "Static")
rust = ProgrammingLanguage.new("Rust", 5, "Static")
swift = ProgrammingLanguage.new("Swift", 2, "Static")
java = ProgrammingLanguage.new("Java", 20, "Static")

array_of_languages = [ruby, python, javascript, go, rust, swift, java] #has class instances stored inside

def array_printer(array)
  array.each do | language |
    puts "Language: #{language.name} |  Age: #{language.age} |  Type System: #{language.type}"
  end
end

array_printer(array_of_languages)

puts ""
puts ""

new_aged_languages = array_of_languages.map do |element|
	element=ProgrammingLanguage.new(element.name,element.age+1,element.type)

end
#Your code goes here
puts "The programming languages aged one year are: "
array_printer(new_aged_languages)


puts ""
puts ""

#sorted_aged_languages = new_aged_languages.sort_by { |element| element.age}#sort from low to highest
sorted_aged_languages=new_aged_languages.sort{|element,other| other.age<=>element.age}


#Your code goes here
puts "The programming languages aged one year are: "
array_printer(sorted_aged_languages)

puts " "

=begin
#Delete_at, will return ONLY the value that is taken out 
#so you have to call the original [now] altered array
deleted_array = sorted_aged_languages.delete_at(3) 
array_printer(sorted_aged_languages)
=end

#Delete_if
#deletes the specified element & returns the corrected array
deleted_array = sorted_aged_languages.delete_if {|element| element.name == "Java"}
array_printer(deleted_array)

puts " "

#shuffled up the order, and returns new array
shuffle_array = deleted_array.shuffle
array_printer(shuffle_array)


puts " "

#Coders choice of 3 methods
#include?

puts shuffle_array.inspect.include?("6")















