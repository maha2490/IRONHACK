#lib/board.rb

class Board
	def initialize
		@pieces = []
	end

	def add_pieces(the_piece)
		x = the_piece.x
		y = the_piece.y
		@pieces[x][y] = the_piece
	end

		
	def board_can_move?
		#is move off board?

		#is space occupied?
		the_piece = @pieces[x][y]

		if the_piece == nil
			false
		elsif  x == x_test && y == y_test  #can't stay in same position
			false
		elsif the_piece.can_move?(x_test, y_test)
			true
		else
			false
		end
	end
end


