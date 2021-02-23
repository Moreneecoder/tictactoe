# rubocop:disable Metrics/BlockLength

# !/usr/bin/env ruby

require './lib/player'
require './lib/board'

puts
puts '################  WELCOME TO TIC TAC TOE GAME   ####################'

print 'ENTER PLAYER ONE NAME: '
puts

player1_name = gets.chomp

print 'ENTER PLAYER TWO NAME: '
puts

player2_name = gets.chomp

puts
puts "--------  #{player1_name.upcase} VS #{player2_name.upcase}     --------"
puts

# CREATE BOARD OBJECT
board = Board.new

# CREATE PLAYER OBJECTS
player1 = Player.new(player1_name, 'X', board)
player2 = Player.new(player2_name, 'O', board)

# DISPLAY INITIAL BOARD
board.display

loop do
  # PLAYER 1 TAKES TURN
  puts
  print "PICK A POSITION, #{player1.name.upcase}: "
  position = gets.chomp.to_i

  # CHECK IF POSITION INPUT IS BETWEEN 1 TO 9
  until (1..9).to_a.any?(position)
    puts 'You can only choose between positions 1 to 9.'
    print "PICK A POSITION, #{player1.name.upcase}: "
    position = gets.chomp.to_i
  end

  # CHECK IF POSITION IS TAKEN
  until board.position_not_used?(position)
    puts 'Position already taken! Choose a different position.'
    print "PICK A POSITION, #{player1.name.upcase}: "
    position = gets.chomp.to_i
  end

  # PLAYER ONE MOVE UPDATES ON BOARD
  player1.play(position)

  # CHECK IF WINNING COMBO
  abort("GAME OVER! #{player1.name.upcase} WINS GAME!") if board.winning_combo?(player1.token)

  # CHECK IF STALEMATE
  abort('TOUGH GAME! THERE WAS NO WINNER') if board.stalemate?

  # PLAYER 2 TAKES TURN
  puts
  print "PICK A POSITION, #{player2.name.upcase}: "
  position = gets.chomp.to_i

  # CHECK IF POSITION INPUT IS BETWEEN 1 TO 9
  until (1..9).to_a.any?(position)
    puts 'You can only choose between positions 1 to 9.'
    print "PICK A POSITION, #{player2_name.name.upcase}: "
    position = gets.chomp.to_i
  end

  # CHECK IF POSITION IS TAKEN
  until board.position_not_used?(position)
    puts 'Position already taken! Choose a different position.'
    print "PICK A POSITION, #{player2.name.upcase}: "
    position = gets.chomp.to_i
  end

  player2.play(position)

  # CHECK IF WINNING COMBO
  abort("GAME OVER! #{player2.name.upcase} WINS GAME!") if board.winning_combo?(player2.token)

  # CHECK IF STALEMATE
  abort('TOUGH GAME! THERE WAS NO WINNER') if board.stalemate?
end
# rubocop:enable Metrics/BlockLength
