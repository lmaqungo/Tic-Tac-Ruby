require_relative 'board'
require_relative 'display'
require_relative 'player'
require 'colorize'

class Game 
  attr_accessor :board, :player_one, :player_two
  def initialize
    puts "Welcome to tic tac toe"
    print "player 1, enter your name: "
    @player_one = Player.new(gets.chomp, "X".colorize(:red))
    print "player 2, enter your name: "
    @player_two = Player.new(gets.chomp, "O".colorize(:blue))
  end

  def player_turn(player, board)
    unless board.board_full?
      puts "#{player.name}'s turn"
      print "enter row: "
      input_row = gets.chomp.to_i
      print "enter column: "
      input_column = gets.chomp.to_i
      board.add_marker(player.marker, input_row, input_column)
      Display.draw_board(board)
      if board.winner?(player.marker)
          puts "#{player.name} wins"
          return true
      end
    else
      puts "Tie!"
      return true
    end
  end
  
  def round
    game_board = Board.new()
    while true
      if player_turn(player_one, game_board)
        break
      elsif player_turn(player_two, game_board)
        break
      end
    end 
  end
end

