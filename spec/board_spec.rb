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
    it 'checks if position is already taken' do
      board = Board.new

      player = Player.new('Rashad', 'O', board)
      player.play(5)

      expect(board.position_not_used?(5)).to be(false)
    end
  end
end