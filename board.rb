require_relative 'pieces'
require 'byebug'
require 'colorize'

class Board

  attr_reader :grid

  BACK_POSITIONS = [Rook.new,
    Knight.new,
    Bishop.new,
    Queen.new,
    King.new,
    Bishop.new,
    Knight.new,
    Rook.new]

  FRONT_POSITIONS = [Rook.new,
    Knight.new,
    Bishop.new,
    Queen.new,
    King.new,
    Bishop.new,
    Knight.new,
    Rook.new]

  def initialize
    @grid = Array.new(8) {Array.new(8) {NullPiece.new} }
  end

  def populate
    [:white, :black].each do |color|
      fill_back_pieces(color)
      fill_pawns(color)
    end
  end


  def move!(start_pos, end_pos) # actually moves the piece to the end pos
    self[start_pos].position = end_pos
    self[end_pos] = self[start_pos]
  end

  def move(start_pos, end_pos) #where we check for checkmate

    if self[start_pos].moves(start_pos).include?(end_pos)
      print "hello"
      move!(start_pos, end_pos)
    end
  end

  def fill_pawns(color)
    color == :white ? (x = 1) : (x = 6)
    @grid[x].length.times do |y|
      pos = [x, y]
      self[pos] = Pawn.new
      self[pos].change_color(color)
      self[pos].position(pos)
      self[pos].board(self)
    end
  end

  def fill_back_pieces(color)
    color == :white ? (x = 0) : (x = 7)
    @grid[x].length.times do |y|
      pos = [x, y]
      self[pos] = Board::BACK_POSITIONS[y] if color == :white
      self[pos] = Board::FRONT_POSITIONS[y] if color == :black
      self[pos].change_color(color)
      self[pos].position(pos)
      self[pos].board(self)
    end
  end

  def [](pos)
    x, y = pos
    @grid[x][y]
  end

  def []=(pos, value)
    x, y = pos
    @grid[x][y] = value
  end

  def rows
    @grid
  end

end
