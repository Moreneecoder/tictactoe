#!/usr/bin/env ruby
# rubocop:disable Metrics/BlockLength

require './lib/player'
require './lib/board'

puts
puts '################  WELCOME TO TIC TAC TOE GAME   ####################'

print 'ENTER PLAYER ONE NAME: '

player1_name = gets.chomp
puts

while player1_name.strip.empty?
  puts 'YOU MUST ENTER A USERNAME'

  print 'ENTER PLAYER ONE NAME: '
  player1_name = gets.chomp
  puts
end

print 'ENTER PLAYER TWO NAME: '

player2_name = gets.chomp
puts

while player2_name.strip.empty?
  puts 'YOU MUST ENTER A USERNAME'

  print 'ENTER PLAYER TWO NAME: '
  player2_name = gets.chomp
  puts
end

puts
puts "--------  #{player1_name.upcase} VS #{player2_name.upcase}     --------"
puts

board = Board.new

player1 = Player.new(player1_name, 'X', board)
player2 = Player.new(player2_name, 'O', board)

puts board.display

loop do
  puts
  print "PICK A POSITION, #{player1.name.upcase}: "
  position = gets.chomp.to_i

  until (1..9).to_a.any?(position)
    puts 'You can only choose between positions 1 to 9.'
    print "PICK A POSITION, #{player1.name.upcase}: "
    position = gets.chomp.to_i
  end

  until board.position_not_used?(position)
    puts 'Position already taken! Choose a different position.'
    print "PICK A POSITION, #{player1.name.upcase}: "
    position = gets.chomp.to_i
  end

  puts "#{player1.name} played #{player1.token} to square #{position}"
  player1.play(position)

  puts board.display

  abort("GAME OVER! #{player1.name.upcase} WINS GAME!") if board.winning_combo?(player1.token)

  abort('TOUGH GAME! THERE WAS NO WINNER') if board.stalemate?

  puts
  print "PICK A POSITION, #{player2.name.upcase}: "
  position = gets.chomp.to_i

  until (1..9).to_a.any?(position)
    puts 'You can only choose between positions 1 to 9.'
    print "PICK A POSITION, #{player2_name.name.upcase}: "
    position = gets.chomp.to_i
  end

  until board.position_not_used?(position)
    puts 'Position already taken! Choose a different position.'
    print "PICK A POSITION, #{player2.name.upcase}: "
    position = gets.chomp.to_i
  end

  puts "#{player2.name} played #{player2.token} to square #{position}"
  player2.play(position)

  puts board.display

  abort("GAME OVER! #{player2.name.upcase} WINS GAME!") if board.winning_combo?(player2.token)

  abort('TOUGH GAME! THERE WAS NO WINNER') if board.stalemate?
end
# rubocop:enable Metrics/BlockLength
