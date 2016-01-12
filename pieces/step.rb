class SteppingPieces < Pieces

  def all_moves
    positions = []
    x,y = @pos
    DIRECTIONS.each do |dx,dy|
      positions << [x + dx, y + dy]
    end

    positions
  end

end
