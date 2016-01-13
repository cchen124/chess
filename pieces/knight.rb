class Knight < SteppingPieces

  attr_reader :directions

  def initialize
    @directions = [[2, 1],
                      [-2, 1],
                      [-2, -1],
                      [2, -1],
                      [-1, 2],
                      [1, 2],
                      [-1, -2],
                      [1, -2]
                     ]

    super("Knight")
  end
  #
  # def initialize
  #
  # end

  def change_color(color)
    @to_s = " \u265E ".colorize(color)
    @color = color
  end

end
