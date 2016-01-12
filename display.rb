require 'colorize'
require_relative 'board'
# require_relative 'game'
require_relative 'cursorable'
require_relative 'piece'

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
    puts "Let's play Chess!"
    build_grid.each { |row| puts row.join }
    puts "Use arrow keys, WASD, to move. Press space or enter to select a square."
  end

  def in_bounds?(pos)
    pos.all? { |x| x.between?(0, 7) }
  end

  def build_grid
    @board.rows.map.with_index do |row, i|
      build_row(row, i)
    end
  end

  def build_row(row, i)
    row.map.with_index do |piece, j|
      color_options = colors_for(i, j)
      piece.to_s.colorize(color_options)

    end
  end

  def colors_for(i, j)
    if [i, j] == @cursor_pos
      bg = :light_red
    elsif (i + j).odd?
      bg = :white
    else
      bg = :light_blue
    end
    {background: bg, color: :black }
  end

end
