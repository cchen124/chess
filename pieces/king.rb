class King < SteppingPieces

  def initialize
    super("King")
  end

  def color(color)
    @to_s = " \u265A ".colorize(color)
    @color = color
  end

end
