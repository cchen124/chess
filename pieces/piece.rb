class Pieces

  attr_reader :color

  PERPENDICULAR_DIRS = [[1,0],
                        [-1,0],
                        [0,1],
                        [0,-1]]

  DIAGONAL_DIRS = [[1,1],
                  [-1,-1],
                  [-1,1],
                  [1,-1]]

  def initialize(name, to_s)
    @name = name
    # @position = position
    @to_s = to_s
  end

  def to_s
    @to_s
  end

  def moves(start_pos)
  end

end

class NullPiece
  attr_accessor :name

  def initialize(to_s = "   ")
    @to_s = to_s
  end

  def to_s
    @to_s
  end

end
