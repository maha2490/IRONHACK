#lib/bishop.rb

class Bishop
	attr_accessor( :x, :y)
	def initialize(x, y, color)
		@x = x
		@y = y
		@color = color
	end

	def can_move?(x_test, y_test)
	    if (@x - x_test).abs == (@y - y_test).abs # change same for both x,y
	        true
	    else
	        false
    	end
  	end
 end


