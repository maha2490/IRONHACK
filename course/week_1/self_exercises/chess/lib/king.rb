#lib/king.rb

class King
	attr_accessor( :x, :y)
	def initialize(x, y, color)
		@x = x
		@y = y
		@color = color
	end

	def can_move?(x_test, y_test)
	    if @x == x_test && (@y - y_test).abs == 1     # x same, y change 1
	        true
	  	elsif (@x - x_test).abs == 1 && (@y - y_test).abs == 1 #x,y both change 1
	      	true
	    elsif (@x - x_test).abs == 1 && @y == y_test  #x change 1, y same
	    	true
	    else
	        false
    	end
  	end
end


=begin
can also do this for def can_move?:
def can_move?
	change_x = (x_test - @X).abs
	change_y = (y_test - @y).abs

	if (change_x == 0 || change_y == 0) &&
		(change_y == 0 || change_y == 1)
		true
	else
		false
	end		
end
=end