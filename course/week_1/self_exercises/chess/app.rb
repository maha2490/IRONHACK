# app.rb

require_relative("lib/rook.rb")
require_relative("lib/king.rb")
require_relative("lib/bishop.rb")
require_relative("lib/knight.rb")
require_relative("lib/queen.rb")
require_relative("lib/pawn.rb")


#ROOK
black_rook_left = Rook.new(1, 8, "black")
black_rook_right = Rook.new(8, 8, "black")
white_rook_left = Rook.new(1, 1,"white")
white_rook_right = Rook.new(8, 1, "white")
puts "Rook Tests"
p black_rook_right.can_move?(8, 5) == true   # Vertical movement
p black_rook_right.can_move?(4, 8) == true   # Horizontal movement
p black_rook_right.can_move?(5, 5) == false  # Diagonal movement (invalid)
p black_rook_right.can_move?(3, 6) == false  # Side diagonal movement? (invalid)
puts ""

#KING
black_king = King.new(5, 8, "black")
white_king = King.new(5, 1, "white")
puts "King Tests"
p black_king.can_move?(5, 7) == true   # Forward movement
p black_king.can_move?(6, 7) == true   # Diagonal movement
p black_king.can_move?(5, 4) == false
p black_king.can_move?(7, 5) == false
puts ""

#BISHOP
black_bishop_left = Bishop.new(3, 8, "black")
black_bishop_right = Bishop.new(6, 8, "black")
white_bishop_left = Bishop.new(3, 1, "white")
white_bishop_right = Bishop.new(6, 1, "white")

puts "Bishop Tests"
p black_bishop_left.can_move?(2, 7) #Diagonal left / true
p black_bishop_left.can_move?(5, 6) #Diagonal right / true
p black_bishop_left.can_move?(3, 6)  #Vertical / false
p black_bishop_left.can_move?(8, 8) #Horizontal / false
puts ""

#KNIGHT
black_knight_left = Knight.new(2, 8, "black")
black_knight_right = Knight.new(7, 8, "black")
white_knight_left = Knight.new(2, 1, "white")
white_knight_right = Knight.new(7, 1, "white")
puts "Knight Tests"
p black_knight_left.can_move?(3, 6) #Down/right / true
p black_knight_left.can_move?(4, 7) #Right/down / true
p black_knight_left.can_move?(7, 4) #false
p black_knight_left.can_move?(1, 1) #flase
puts ""

#QUEEN
black_queen = Queen.new(4, 8, "black")
white_queen = Queen.new(4, 1, "white")
puts "Queen Tests"
p black_queen.can_move?(4, 6) #vertical / true
p black_queen.can_move?(1, 8) #horizontal / true
p black_queen.can_move?(1, 5) #false
p black_queen.can_move?(8, 2) #false
puts ""

#PAWN
black_pawn_1_7 = Pawn.new(1, 7, "black")
black_pawn_2_7 = Pawn.new(2, 7, "black")
black_pawn_3_7 = Pawn.new(3, 7, "black")
black_pawn_4_7 = Pawn.new(4, 7, "black")
black_pawn_5_7 = Pawn.new(5, 7, "black")
black_pawn_6_7 = Pawn.new(6, 7, "black")
black_pawn_7_7 = Pawn.new(7, 7, "black")
black_pawn_8_7 = Pawn.new(8, 7, "black")
white_pawn_1_2 = Pawn.new(1, 2, "white")
white_pawn_2_2 = Pawn.new(2, 2, "white")
white_pawn_3_2 = Pawn.new(3, 2, "white")
white_pawn_4_2 = Pawn.new(4, 2, "white")
white_pawn_5_2 = Pawn.new(5, 2, "white")
white_pawn_6_2 = Pawn.new(6, 2, "white")
white_pawn_7_2 = Pawn.new(7, 2, "white")
white_pawn_8_2 = Pawn.new(8, 2, "white")

puts "Pawn Tests"
p black_pawn_1_7.can_move?(1, 8) #false
p white_pawn_8_2.can_move?(8, 1) #false
puts ""

#BOARD
my_board = Board.new

my_board.add_piece(white_king)
my_board.add_piece(white_rook_right)
my_board.add_piece(white_knight_right)
my_board.add_piece(black_king)
my_board.add_piece(black_rook_right)

#   					   @x  @y
#   						|  |  
p my_board.board_can_move?(5, 8, 5, 7) #true
#    							 |  |
#     					  x_test  y_test  




