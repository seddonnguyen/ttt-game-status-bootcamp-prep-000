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
    idx_1 = combo[0]
    idx_2 = combo[1]
    idx_3 = combo[2]
    
    position_1 = board[idx_1]
    position_2 = board[idx_2]
    position_3 = board[idx_3]

    if position_1 == position_2 && position_1 == position_3
      return combo
    else
      return false
    end
  end
end
