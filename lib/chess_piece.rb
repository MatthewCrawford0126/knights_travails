require_relative 'chess_board'

class ChessPiece
  attr_accessor :row, :col

  def initialize(row, col)
    @row = row
    @col = col
  end

  # validates that a piece can move to the given cell
  # checks if a cell is occupied and if it is inside the given board
  def can_move(chess_board_config, new_row, new_col)
    if chess_board_config.validate_cell(new_row,new_col)
      unless chess_board_config.occupied?(new_row, new_col)
        return true
      end
    end
    false
  end
end