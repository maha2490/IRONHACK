#game 
class Game
	def initialize 
		@list_of_rooms =[]
		@current_position = 0
	end

	def add_room(room)
		@list_of_rooms.push(room)
	end

	def play_the_game
		current_room = @list_of_rooms[@current_position]
		puts current_room.enter_message
		user_input = gets.chomp
		if user_input == current_room.exit_key
			@current_position += 1
			play_the_game  #look over other examples, not understanding
		else
			puts "You're in the same room."
			play_the_game  #has the method start over again for next item in array
		end

	end
end
