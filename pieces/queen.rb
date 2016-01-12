class Queen < SlidingPieces

  def initialize
    super("Queen")
  end

  def color(color)
    @to_s = " \u265B ".colorize(color)
    @color = color
  end

end
