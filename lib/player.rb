class Player
  attr_reader :name, :token, :board

  def initialize(name, token, board)
    @name = name
    @token = token
    @board = board
  end

  def play(position)
    puts "#{@name.upcase} played #{@token} to square #{position}"
    @board.update_board(position, @token)
    @board.display
  end
end
