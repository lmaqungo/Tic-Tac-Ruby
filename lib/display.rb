class Display
  def self.draw_board(boardObj)
    boardObj.board.each do |row|
      row.each do |cell|
        print "#{cell} "
      end
      puts
    end
  end
end