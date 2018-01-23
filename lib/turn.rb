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
  gets = user_input
  user_input.to_i - 1
end

def valid_move?(board,position)
  if not position.between?(0,8) && position_taken?
    puts display_board
  else
     puts "Please enter 1-9:"
     until valid_move? == true
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

def move(board, position, user_input)
  board[position] = user_input
end
