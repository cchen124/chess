class Pieces

  attr_reader :color, :position
  PERPENDICULAR_DIRS = [[1,0],
                        [-1,0],
                        [0,1],
                        [0,-1]]

  DIAGONAL_DIRS = [[1,1],
                  [-1,-1],
                  [-1,1],
                  [1,-1]]

  def initialize(name)
    @name = name
    @position = nil
  end

  def to_s
    @to_s
  end

  def color(color)
    @color = color
  end

  def position(pos)
    @pos = pos
  end

  def moves(start_pos)

  end

  def valid_move?(all_moves)
    valid_moves = []

    all_moves.each do |move|
      if move.all? { |coord| coord.between?(0,7) } &&
        valid_moves << move
      end
    end



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
