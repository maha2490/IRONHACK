#app.rb code

require_relative("lib/Game.rb")
require_relative("lib/Room.rb")
#require_relative("lib/Character.rb")

fun_adventures = Game.new
puts "Welcome to Fun Adventures"
puts ""
puts "There are a series of rooms ahead /n navigate around by N, S, E, W"
puts "Let's go have fun!!"

mall = Room.new("One of the best places on earth: you're in the mall", "See ya later mallenator!", "S") 
puppy_store = Room.new("You just walked into Furry Friends, a puppy store!", "Goodbye sweet puppies.", "E")
pizza_parlor = Room.new("Hope you're hungry. Pizza is coming out of the oven at the Lovin Oven.", "Peace out pizza peeps.", "W")
soda_shop = Room.new("Always room for dessert, right? Get a sundae here at the Soda Shop.", "Sweet is good, on to the next thing.", "N")
record_store = Room.new("Tunes are always spinning at your favorite Catz music.", "Jammin out!", "E")

fun_adventures.add_room(mall)
fun_adventures.add_room(puppy_store)
fun_adventures.add_room(pizza_parlor)
fun_adventures.add_room(soda_shop)
fun_adventures.add_room(record_store)

#me = Character.new("me")
fun_adventures.play_the_game




