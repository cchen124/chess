class Pieces

  attr_reader :color

  def initialize(name, to_s)
    @name = name
    # @position = position
    @to_s = to_s
  end

  def to_s
    @to_s
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

class SlidingPieces < Pieces

  def moves(current_position)

  end

end

class Rook < SlidingPieces

  def initialize(name = "Rook", to_s)
    super
  end

  def moves(current_position)

  end

end

class Bishop < SlidingPieces

  def initialize(name = "Bishop", to_s)
    super
  end

  def moves(current_position)

  end

end

class Queen < SlidingPieces

  def initialize(name = "Queen", to_s)
    super
  end

  def moves(current_position)

  end

end


class SteppingPieces < Pieces

  def moves(current_position)

  end

end

class King < SteppingPieces

  def initialize(name = "King", to_s)
    super
  end

  def moves(current_position)

  end

end

class Knight < SteppingPieces

  def initialize(name = "Knight", to_s)
    super
  end

  def moves(current_position)

  end

end

class Pawn < Pieces

  def initialize(name = "Pawn", to_s)
    super
  end

  def moves(current_position)

  end

  # def to_s
  #   @to_s
  # end

end
