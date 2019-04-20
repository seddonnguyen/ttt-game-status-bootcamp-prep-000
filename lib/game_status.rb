# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won?(board)
  WIN_COMBINATIONS.each do |combo|
    pos_1 = board[combo[0]]
    pos_2 = board[combo[1]]
    pos_3 = board[combo[2]]

    if pos_1 == pos_2 && pos_1 == pos_3 && position_taken?(board, combo[0])
      return combo
    end
  end
  return false
end

def full?(board)
  return !board.any? {|pos| pos == " "}
end

def draw?(board)
  return full?(board) && !won?(board)
end

def over?(board)
  return full?(board) || draw?(board) || won?(board)
end

def winner?(board)
end
