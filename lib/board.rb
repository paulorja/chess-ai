require 'colorize'
require 'byebug'

class Board
  def initialize
    @pieces = [
      Pawn.new(:black, :a7),
      Pawn.new(:black, :b7),
      Pawn.new(:black, :c7),
      Pawn.new(:black, :d7),
      Pawn.new(:black, :e7),
      Pawn.new(:black, :f7),
      Pawn.new(:black, :g7),
      Pawn.new(:black, :h7),
      Pawn.new(:white, :a2),
      Pawn.new(:white, :b2),
      Pawn.new(:white, :c2),
      Pawn.new(:white, :d2),
      Pawn.new(:white, :e2),
      Pawn.new(:white, :f2),
      Pawn.new(:white, :g2),
      Pawn.new(:white, :h2)
    ]
  end

  def move(movement)
    @pieces.first.set_position :a5
  end

  def to_s
    background = :blue
    ret = "    a  b  c  d  e  f  g  h\n"
    [8, 7, 6, 5, 4, 3, 2, 1].each do |number|
      if number % 2 == 0
        background = :red
      else
        background = :blue
      end
      %w(a b c d e f g h).each do |letter|
        if background == :blue
          background = :red
        else
          background = :blue
        end

        ret << " #{number} "if letter == "a"

        piece_found = false
        @pieces.each do |piece|
          if piece.current_position.to_s == "#{letter}#{number}"
            ret << piece.symbol.colorize(color: piece.color, background: background)
            piece_found = true
          end
        end

        ret << '   '.colorize(background: background) unless piece_found

        ret << " #{number} "if letter == "h"
      end
      ret << "\n"
    end
    ret << "    a  b  c  d  e  f  g  h\n"
    ret
  end
end

class Piece
  attr_reader :color, :current_position

  def initialize(color, current_position)
    @color = color
    @current_position = current_position
  end

  def set_position(position)
    @current_position = position
  end
end

class Pawn < Piece
  def can_move(board, position)
    true
  end

  def symbol
    " ♟ "
  end
end

board = Board.new

puts board.to_s

loop do 
  move = gets.chomp
  board.move move
  puts board.to_s
end

