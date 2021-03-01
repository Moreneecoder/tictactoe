require './lib/board'
require './lib/player'

describe Board do
  context '#display' do
    example 'returns an array' do
      board = Board.new
      board_array = ['---1--- | ---2--- | ---3---', '---4--- | ---5--- | ---6---', '---7--- | ---8--- | ---9---']
      expect(board.display).to eql(board_array)
    end
  end

  describe '#update_board' do
    it 'updates chosen position to player assigned token' do
      board = Board.new
      expect(board.update_board(4, 'X')).to eql('X')
    end
  end

  describe '#position_not_used?' do
    it 'returns false if position is already taken' do
      board = Board.new

      player = Player.new('Rashad', 'O', board)
      player.play(5)

      expect(board.position_not_used?(5)).to be(false)
    end
  end

  describe '#combo' do
    it 'returns true if all three supplied positions matches token' do
      board = Board.new
      player = Player.new('Rashad', 'X', board)
      3.times { |index| player.play(index + 1) }

      expect(board.combo(board.board_array[0], board.board_array[1], board.board_array[2], 'X')).to be(true)
    end
  end

  describe '#winning_combo' do
    it 'returns true if token has three matches horizontally' do
      board = Board.new
      player = Player.new('Rashad', 'X', board)
      3.times { |index| player.play(index + 1) }

      expect(board.combo(board.board_array[0], board.board_array[1], board.board_array[2], 'X')).to be(true)
    end

    it 'returns true if token has three matches vertically' do
      board = Board.new
      player = Player.new('Rashad', 'O', board)
      position = [1, 4, 7]
      position.each { |val| player.play(val) }
      3.times { |index| player.play(index + 3) }

      expect(board.combo(board.board_array[0], board.board_array[3], board.board_array[6], 'O')).to be(true)
    end

    it 'returns true if token has three matches diagonally' do
      board = Board.new
      player = Player.new('Rashad', 'O', board)
      position = [2, 4, 6]
      position.each { |val| player.play(val) }
      3.times { |index| player.play(index + 2) }

      expect(board.combo(board.board_array[1], board.board_array[3], board.board_array[5], 'O')).to be(true)
    end
  end

  describe '#stalemate?' do
    it 'returns true if all elements in board array is a string' do
      board = Board.new
      player = Player.new('Rashad', 'O', board)

      9.times { |index| player.play(index + 1) }
      expect(board.stalemate?).to be(true)
    end
  end
end
