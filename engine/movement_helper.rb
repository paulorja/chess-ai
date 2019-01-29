class MovementHelper

  def self.is_valid(board, from, to)
    piece_from = board.matrix[from[0]][from[1]]
    piece_to = board.matrix[to[0]][to[1]]
    if piece_from == -1 or piece_from == 1
      return pawn(board, from, to)
    end
  end

  def self.pawn(board, from, to)
    if from[0] == line_to_matrix(2) or from[0] == line_to_matrix(7)
      diff = from[0] - to[0]
      if diff.abs == 1 or diff.abs == 2 and from[1] == to[1]
        return true
      end
    end
  end

  def self.line_to_matrix(expected_line)
    return 0 if expected_line >= 8
    8-expected_line
  end

end
