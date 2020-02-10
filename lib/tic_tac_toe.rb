class TicTacToe

  def initialize(board = nil)
   @board = board || Array.new(9, " ")
   end
   WIN_COMBINATIONS = [
     [0,1,2], # Top row
     [3,4,5], # Middle row
     [6,7,8], # Bottom row
     [0,3,6], # Left side
     [1,4,7], # Center vertical
     [2,5,8], # Right Side
     [2,4,6], # Diagnol 1
     [0,4,8] # Diagnol 2
   ]

  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

  def input_to_index(num)
  index = num.to_i - 1

  index
  end

  def move(index,character)
    @board[index] = character
  end

  def position_taken?(index)
    !(@board[index].nil? || @board[index] == " ")
  end

  def turn_count
  count = 0
  @board.each  {|occ| occ == "X" || occ == "O"? count+=1}
    # if occ == "X"
    #   count += 1
    # elsif occ == "O"
    #   count += 1
    # end
  end
  count
end

  def on_board?(num)
    if num.between?(0, 8)
      return true
    else
      return false
    end
  end

  def valid_move?(index)
  # board = @board
  if !(position_taken?(index)) && on_board?(index)
    return true
  else
    return false
  end
end
end
