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

def input_to_index(board)
  gets.input
  input.to_i = position
end

def valid_move?
  if board[position].to_i == between?(1,9)
    true
  if position_taken? == "false"
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
end
