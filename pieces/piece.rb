class Pieces

  attr_reader :color, :position, :grid

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
  end

  def to_s
    @to_s
  end

  def change_color(color)
    @color = color
  end

  def color
    @color
  end

  def position(pos)
    @pos = pos
  end

  def board(board)
    @board = board
  end

  def moves(start_pos)
    valid_moves = []
    all_moves(start_pos).each do |move|
      valid_moves << move if valid_move?(move)
    end

    valid_moves
  end

  def valid_move?(move)
    return false unless move.all? { |coord| coord.between?(0,7) }
    # return false if board[move].color == @color
    # true
    @board[move].color == @color
  end

end

class NullPiece
  attr_accessor :name, :color

  def initialize(to_s = "   ")
    @to_s = to_s
    @color = nil
  end

  def to_s
    @to_s
  end

end
