class Board

  attr_reader :grid

  def initialize()
    @grid = Array.new(8) {Array.new(8) {Piece.new} }

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



end
