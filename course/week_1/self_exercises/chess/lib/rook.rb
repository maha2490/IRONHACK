# lib/rook.rb

class Rook
  attr_accessor( :x, :y)
  def initialize(x, y, color)
    @x = x
    @y = y
    @color = color
  end

  #applies to all colors of piece
  def can_move?(x_test, y_test)
    if @x == x_test || @y == y_test
      true
    else
      false
    end
  end
end