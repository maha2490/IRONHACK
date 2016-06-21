#the rooms
class Room
	attr_accessor :enter_message, :exit_message, :exit_key
	def initialize(enter_message, exit_message, exit_key) 
	@enter_message = enter_message
	@exit_message = exit_message
	@exit_key = exit_key
	end

	def print_enter_message
		@enter_message
	end

	def exit_room


		@exit_message
	end
	#def ROOM SPECIFIC MESSAGE?
end