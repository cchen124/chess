require 'colorize'
require_relative 'board'
# require_relative 'game'
require_relative 'cursorable'

class Display

  include Cursorable

  attr_accessor :cursor_pos

  def initialize(board)
    @board = board
    @cursor_pos = [0,0]
    @selected = false
  end

  def render
    system("clear")
    puts "Chess!"
    # @board.grid.each do |row|
    #   puts "#{row}"
    # end
    puts "#{@board.grid}"
    puts "Use arrow keys, WASD, to move. Press space or enter to select a square."
  end

  def in_bounds?(pos)
    pos.all? { |x| x.between?(0, 7) }
  end

end
