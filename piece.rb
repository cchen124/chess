class Pieces

  attr_reader :color

  def initialize(type, position, color = "   ")
    @piece_type = type
    @position = position
    @color = color
  end

end

class NullPiece
  attr_accessor :type

  def initialize
    @type  = "   "

  end

  def to_s
    "   "
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

  def move_dirs
    []
  end

  def to_s
    " \u{2656} "
  end

end

class Bishop < SlidingPieces

  def move_dirs

  end

  def to_s
    " \u{2656} "
  end

end

class Queen < SlidingPieces

  def move_dirs

  end

  def to_s
    " \u{2656} "
  end

end


class SteppingPieces < Pieces

  def moves(current_position)

  end

end

class Pawn < Pieces

  def initialize(to_s)
    @to_s = to_s
  end

  def moves(current_position)

  end

  def to_s
    @to_s
  end

end
