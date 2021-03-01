require './lib/board.rb'
require './lib/player.rb'

describe Board do
  context '#display' do
    example 'returns an array' do
      board = Board.new
      expect(board.display).to eql(["---1--- | ---2--- | ---3---", "---4--- | ---5--- | ---6---", "---7--- | ---8--- | ---9---"])
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
      player.play(1)
      player.play(2)
      player.play(3)

      expect(board.combo(board.board_array[0], board.board_array[1], board.board_array[2], 'X')).to be(true)
    end
  end

  describe '#winning_combo' do
    it 'returns true if token has three matches horizontally' do
        board = Board.new
        player = Player.new('Rashad', 'X', board)
        player.play(3)
        player.play(4)
        player.play(5)
  
        expect(board.combo(board.board_array[2], board.board_array[3], board.board_array[4], 'X')).to be(true)
    end

    it 'returns true if token has three matches vertically' do
        board = Board.new
        player = Player.new('Rashad', 'O', board)
        player.play(1)
        player.play(4)
        player.play(7)
  
        expect(board.combo(board.board_array[0], board.board_array[3], board.board_array[6], 'O')).to be(true)
    end

    it 'returns true if token has three matches diagonally' do
        board = Board.new
        player = Player.new('Rashad', 'O', board)
        player.play(2)
        player.play(4)
        player.play(6)
  
        expect(board.combo(board.board_array[1], board.board_array[3], board.board_array[5], 'O')).to be(true)
    end
  end
end