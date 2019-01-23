class Match

  attr_reader :board, :current_movement

  def initialize
    @board = Board.new
    @current_movement = "white"
  end

end
