require './lib/player.rb'
require './lib/board.rb'

describe Player do
  describe '#play' do
    it 'sets chosen position to player token' do
      board = Board.new
      player = Player.new('Rashad', 'O', board)
      expect(player.play(2)).to eql('O')
    end
  end
end
