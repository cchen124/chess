class SteppingPieces < Pieces

  def all_moves(start_pos)
    positions = []
    x, y = start_pos

    directions.each do |dx, dy|
      positions << [x + dx, y + dy]
    end

    positions
  end

end
