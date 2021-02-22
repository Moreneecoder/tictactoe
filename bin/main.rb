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
# game begins
# Game board [1-9]
# game_board = GameBoard.new()
# display initial board game board
# game_board.display()
# inital game board
#-----1-----|------2-----|-----3-----
#-----4-----|------5-----|-----6-----
#-----7-----|------8-----|-----9-----
plays = 1
while plays <= 9

  puts

  puts "Player 1 #{player1} Select position from  1 - 9"
  position = gets.chomp

  # player1_obj.play(position)
  # board.display()
  puts "Player 1 #{player1} selected this position #{position}"
  puts '-----X-----|------2-----|-----3-----'
  puts '-----4-----|------5-----|-----6-----'
  puts '-----7-----|------8-----|-----9-----'
  puts
  puts
  # Check for wining combinations
  # break if player wins
  break if plays == 9
  
  plays += 1

  puts "Game play: #{plays}"
  puts "Player 2 #{player2} Select position from  1 - 9"
  position = gets.chomp
  puts
  puts "Player 2 #{player2} selected this position #{position}"
  # player2_obj.play(position)
  # board.display()
  puts '-----X-----|------2-----|-----3-----'
  puts '-----4-----|------O-----|-----6-----'
  puts '-----7-----|------8-----|-----9-----'
  # Check for wining combinations
  # break if player wins
  break if plays == 9

  puts
  plays += 1
  puts "Game play: #{plays}"

end
