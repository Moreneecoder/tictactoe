# rubocop:disable Metrics/CyclomaticComplexity, Metrics/PerceivedComplexity

class Board

  attr_reader :board_array

  def initialize
    @board_array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def display
    ["---#{@board_array[0]}--- | ---#{@board_array[1]}--- | ---#{@board_array[2]}---",
     "---#{@board_array[3]}--- | ---#{@board_array[4]}--- | ---#{@board_array[5]}---",
     "---#{@board_array[6]}--- | ---#{@board_array[7]}--- | ---#{@board_array[8]}---"]
  end

  def update_board(position, token)
    @board_array[position - 1] = token
  end

  def position_not_used?(position)
    return false if (@board_array[position - 1] == 'X') || (@board_array[position - 1] == 'O')

    true
  end

  def combo(combo1, combo2, combo3, user_token)
    combo1 == user_token && combo2 == user_token && combo3 == user_token
  end

  def winning_combo?(user_token)
    return true if combo(@board_array[0], @board_array[1], @board_array[2], user_token)
    return true if combo(@board_array[3], @board_array[4], @board_array[5], user_token)
    return true if combo(@board_array[6], @board_array[7], @board_array[8], user_token)

    return true if combo(@board_array[0], @board_array[3], @board_array[6], user_token)
    return true if combo(@board_array[1], @board_array[4], @board_array[7], user_token)
    return true if combo(@board_array[2], @board_array[5], @board_array[8], user_token)

    return true if combo(@board_array[0], @board_array[4], @board_array[8], user_token)
    return true if combo(@board_array[2], @board_array[4], @board_array[6], user_token)

    false
  end

  def stalemate?
    @board_array.all?(String)
  end
end

# rubocop:enable Metrics/CyclomaticComplexity, Metrics/PerceivedComplexity
