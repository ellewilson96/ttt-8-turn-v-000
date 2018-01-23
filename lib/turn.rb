def input_to_index(move)
   position = move.to_i - 1
   position
end

def move(board, position, token = "X")
  board[position] = token
end

def display_board(board)
  puts "   " "|" "   " "|" "   "
  puts "-----------"
  puts "   " "|" "   " "|" "   "
  puts "-----------"
  puts "   " "|" "   " "|" "   "
end


def valid_move?(board,position)
  if position.between?(0,8) && !position_taken?(board,position)
    puts "this is a valid move"
    return true
  else
     return false
  end
end

def position_taken?(board,position)
  if board[position] == " "
    false
    elsif board[position] == ""
    false
    elsif  board[position] == nil
    false
    else   board[position] == "X" || "O"
    true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  position = input_to_index(user_input)
  if valid_move?(board,position)
    puts "valid move"
    move(board, position, token = "X")
  else
    puts "try again"
    turn(board)
end
  display_board(board)
end
