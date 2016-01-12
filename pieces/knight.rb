class Knight < SteppingPieces

  DIRECTIONS = [[2, 1],
                      [-2, 1],
                      [-2, -1],
                      [2, -1],
                      [-1, 2],
                      [1, 2],
                      [-1, -2],
                      [1, -2]
                     ]
  def initialize
    super("Pawn")
  end

  def color(color)
    @to_s = " \u265F ".colorize(color)
    @color = color
  end

end
