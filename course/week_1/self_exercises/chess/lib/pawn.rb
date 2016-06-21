#lib/pawn.rb

class Pawn
	attr_accessor( :x, :y)
	def initialize(x, y, color)
		@x = x
		@y = y
		@color = color
	end

	def can_move?(x_test, y_test)
		if @color == "black"
			if @x == x_test && (@y - y_test) == -1
				true
			else
				false
			end	
		elsif @color == "white"
			if @x == x_test && (@y - y_test) == 1
				true
			else
				false		
			end	
		end
	end
end
