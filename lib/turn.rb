def turn(board)
  puts "Please enter 1-9:"
end

def display_board(board)
  puts "   " "|" "   " "|" "   "
  puts "-----------"
  puts "   " "|" "   " "|" "   "
  puts "-----------"
  puts "   " "|" "   " "|" "   "
end

def input_to_index(user_input)
  user_input = gets
  user_input.to_i - 1
end

def valid_move?(board,position)
  if  position.to_i.between?(1,9) && position_taken?
    true
  else
     false
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

def update_array_at_with(board, position, user_input)
  board[position] = user_input
end
