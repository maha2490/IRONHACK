#lib/knight.rb

class Knight
	attr_accessor( :x, :y)
	def initialize(x, y, color)
		@x = x
		@y = y
		@color = color
	end

	def can_move?(x_test, y_test)
	    if (@x - x_test).abs == 1 && (@y - y_test).abs == 2 # x change 1, y change 2
	        true
	    elsif (@x - x_test).abs == 2 && (@y - y_test).abs == 1 # x change 2, y change 1
	        true	
	    else
	        false
    	end
  	end
 end