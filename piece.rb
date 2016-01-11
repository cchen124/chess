class Pieces

  def initialize(type, position)
    @piece_type = type
    @position = position
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

  end

end

class Bishop < SlidingPieces

  def move_dirs

  end

end

class Queen < SlidingPieces

  def move_dirs

  end

end


class SteppingPieces < Pieces

  def moves(current_position)

  end

end

class Pawn < Pieces

  def moves(current_position)

  end

end
