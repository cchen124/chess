class Pieces

  attr_reader :color

  def initialize(type, to_s)
    @piece_type = type
    @position = position
    @to_s = to_s
  end

  def to_s
    @to_s
  end

end

class NullPiece
  attr_accessor :type

  def initialize(to_s = "   ")
    @to_s = to_s
  end

  def to_s
    @to_s
  end

end

class SlidingPieces < Pieces

  def initialize(name, position)
    super(name, position)
  end

  def moves(current_position)

  end

end

class Rook < SlidingPieces

  def initialize(type = "Rook", to_s)
    @to_s = to_s
  end

  def moves(current_position)

  end

end

class Bishop < SlidingPieces

  def initialize(type = "Bishop", to_s)
    @to_s = to_s
  end

  def moves(current_position)

  end

end

class Queen < SlidingPieces

  def initialize(type = "Queen", to_s)
    @to_s = to_s
  end

  def moves(current_position)

  end

end


class SteppingPieces < Pieces

  def moves(current_position)

  end

end

class King < SteppingPieces

  def initialize(type = "King", to_s)
    @to_s = to_s
  end

  def moves(current_position)

  end

end

class Knight < SteppingPieces

  def initialize(type = "Knight", to_s)
    @to_s = to_s
  end

  def moves(current_position)

  end

end

class Pawn < Pieces

  def initialize(type = "Pawn", to_s)
    @to_s = to_s
  end

  def moves(current_position)

  end

  # def to_s
  #   @to_s
  # end

end
