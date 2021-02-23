#!/usr/bin/env ruby

puts 'Welcome to tic tac toe game'

# Collect player names
puts 'Type Player 1 Name: '
player1 = gets.chomp
puts 'Type Player 2 Name: '
player2 = gets.chomp

# Create players objects
# player1_obj = Player.new(player1, "X" )
# player2_obj = Player.new(player2, "O" )

# GAME BEGINS

# Game board [1-9]
# game_board = GameBoard.new()

# DISPLAY INITIAL GAME BOARD
# game_board.display()
# inital game board
#-----1-----|------2-----|-----3-----
#-----4-----|------5-----|-----6-----
#-----7-----|------8-----|-----9-----

in_progress = true

while in_progress

  puts

  puts "Player 1 #{player1} Select position from  1 - 9"
  position = gets.chomp

  # CHECK FOR INVALID INPUT
  invalid = true

  puts 'You must enter between values 1 to 9' if invalid

  # CHECK IF POSITION IS TAKEN
  position_valid = true

  puts 'POSITION ALREADY TAKEN! SELECT AVAILABLE POSITION.' if position_valid

  # player1_obj.play(position)

  # CHECK IF WINNING MOVE
  winning_move = false

  puts 'GAME OVER! PLAYER 1 WINS!' if winning_move

  # CHECK IF GAME IS A TIE
  is_a_tie = false

  puts 'TOUGH GAME! IT IS A DRAW' if is_a_tie

  # board.display()
  puts "Player 1 #{player1} selected this position #{position}"
  puts '-----X-----|------2-----|-----3-----'
  puts '-----4-----|------5-----|-----6-----'
  puts '-----7-----|------8-----|-----9-----'
  puts
  puts

  puts "Player 2 #{player2} Select position from  1 - 9"
  position = gets.chomp
  puts
  puts "Player 2 #{player2} selected this position #{position}"

  # player2_obj.play(position)
  # board.display()
  puts '-----X-----|------2-----|-----3-----'
  puts '-----4-----|------O-----|-----6-----'
  puts '-----7-----|------8-----|-----9-----'

  in_progress = false
  break if in_progress == false

end
