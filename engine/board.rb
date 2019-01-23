class Board

  def initialize
    @matrix = [
      [-2, -3, -4, -5, -6, -4, -3, -2],
      [-1, -1, -1, -1, -1, -1, -1, -1],
      [0, 0, 0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 0],
      [1, 1, 1, 1, 1, 1, 1, 1],
      [2, 3, 4, 6, 6, 5, 3, 2],
    ]
  end

  def get_square(pos)
    array_pos = BoardMapping::SQUARES[pos.to_sym]
    return nil if array_pos.nil?
    return @matrix[array_pos[0]][array_pos[1]]
  end

end
