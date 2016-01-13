require_relative 'piece'

class Pawn < Pieces

  def initialize
    super("Pawn")
  end

  def change_color(color)
    @to_s = " \u265F ".colorize(color)
    @color = color
  end

end
