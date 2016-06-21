#lib/queen.rb

class Queen
	attr_accessor( :x, :y)
	def initialize(x, y, color) 
		@x = x
		@y = y
		@color = color
	end

	def can_move?(x_test, y_test)
		if @x == x_test && (@y - y_test).abs >= 1     # x same, y +- 1
	        true
	  	elsif (@x - x_test).abs == 1 && (@y - y_test).abs == 1 #x, y both change 1
	      	true
	    elsif (@x - x_test).abs >= 1 && @y == y_test  #x +- 1, y same
	    	true
	    else
	        false
    	end
	end
end
