class Bishop < SlidingPieces

  def initialize
    super("Bishop")
  end

  def color(color)
    @to_s = " \u265D ".colorize(color)
    @color = color
  end

end
