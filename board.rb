require_relative 'piece'

class Board

  attr_reader :grid

  def initialize()
    @grid = Array.new(8) {Array.new(8) {NullPiece.new} }
  end

  def populate

    @grid[0] = [Rook.new(" \u2656 "),
      Knight.new(" \u2658 "),
      Bishop.new(" \u2657 "),
      Queen.new(" \u2655 "),
      King.new(" \u2654 "),
      Bishop.new(" \u2657 "),
      Knight.new(" \u2658 "),
      Rook.new(" \u2656 ")]

    @grid[1].map! do |pawn|
      pawn = Pawn.new(" \u{2659} ")
    end

    @grid[6].map! do |pawn|
      pawn = Pawn.new(" \u{265F} ")
    end

    @grid[7] = [Rook.new(" \u265C "),
      Knight.new(" \u265E "),
      Bishop.new(" \u265D "),
      Queen.new(" \u265B "),
      King.new(" \u265A "),
      Bishop.new(" \u265D "),
      Knight.new(" \u265E "),
      Rook.new(" \u265C ")]

  end

  def move!(start_pos, end_pos)
  end

  def move(start_pos, end_pos)
    # raise "Error" if self[start_pos] == nil # raises error if no piece at strt pos
    # raise "Another error" if self[end_pos] == outside board || same team

    self[start_pos].position = end_pos
  end

  def [](pos)
    x, y = pos
    @grid[x][y]
  end

  def [](pos, value)
    x, y = pos
    @grid[x][y] = value
  end

  def rows
    @grid
  end

end
