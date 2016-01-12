class Rook < SlidingPieces

  def initialize
    super("Rook")
  end

  def color(color)
    @to_s = " \u265C ".colorize(color)
    @color = color
  end

end
