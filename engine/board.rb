class Board

  attr_reader :matrix

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

  def movement(movement)
    from = BoardMapping::SQUARES[movement[0..1].to_sym]
    to = BoardMapping::SQUARES[movement[2..3].to_sym]
    piece_from = @matrix[from[0]][from[1]]

    if MovementHelper.is_valid(self, from, to)
      @matrix[to[0]][to[1]] = @matrix[from[0]][from[1]]
      @matrix[from[0]][from[1]] = 0
    end

  end

end
