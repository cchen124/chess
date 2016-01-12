require_relative 'piece'

class Pawn < Pieces

  def initialize
    super("Pawn")
  end

  def color(color)
    @to_s = " \u265F ".colorize(color)
    @color = color
  end
  
end
