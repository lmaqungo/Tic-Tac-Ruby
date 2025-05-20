class Board
  attr_reader :board
  def initialize
    @board = []
    3.times {self.board.push Array.new(3, " ")}
  end
  
  def add_marker(marker, row, column)
      if self.board[row-1][column-1] == " " 
      self.board[row-1][column-1] = marker
      end
    
  end

  def board_full?
    self.board.flatten.none? {|cell| cell == " "}
  end

  def winner?(player_marker)
    if [axis[:cell_1], axis[:cell_2], axis[:cell_3], player_marker].uniq.count <= 1
      return true
    elsif [axis[:cell_4], axis[:cell_5], axis[:cell_6], player_marker].uniq.count <= 1
      return true
    elsif [axis[:cell_7], axis[:cell_8], axis[:cell_9], player_marker].uniq.count <= 1
      return true
    elsif [axis[:cell_1], axis[:cell_4], axis[:cell_7], player_marker].uniq.count <= 1
      return true
    elsif [axis[:cell_2], axis[:cell_5], axis[:cell_8], player_marker].uniq.count <= 1
      return true
    elsif [axis[:cell_3], axis[:cell_6], axis[:cell_9], player_marker].uniq.count <= 1
      return true
    elsif [axis[:cell_1], axis[:cell_5], axis[:cell_9], player_marker].uniq.count <= 1
      return true
    elsif [axis[:cell_3], axis[:cell_5], axis[:cell_7], player_marker].uniq.count <= 1
      return true
    else
      return false
    end
  end

  def axis
    {
      cell_1: board[0][0],
      cell_2: board[0][1],
      cell_3: board[0][2],
      cell_4: board[1][0],
      cell_5: board[1][1],
      cell_6: board[1][2],
      cell_7: board[2][0],
      cell_8: board[2][1],
      cell_9: board[2][2]
    }
  end
end
