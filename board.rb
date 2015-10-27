def initialize
  @spaces = Array.new(9)
end

winning_positions = [
  ["1", "2", "3"], ["4", "5", "6"], ["7", "8", "9"],
  ["1", "4", "7"], ["2", "5", "8"], ["3", "6", "9"],
  ["1", "5", "9"], ["3", "5", "7"]
]

positions = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]

board_array =
  [["1", "2", "3"],
   ["4", "5", "6"],
   ["7", "8", "9"]

def intro_text
  puts "Welcome to Tic Tac Toe! Choose a position!"
  #
  # puts "Valid locations are A1 (top-left), A2 (top-center), A3 (top-right), B1 (middle-left), B2 (middle-center), B3 (middle-right),
  #     C1 (bottom-left), C2 (bottom-center), and C3 (bottom-right)"
end

 0 | 1 | 2
----------
 3 | 4 | 5
----------
 6 | 7 | 8

 @spaces = Array.new(9)

intro_text
empty_board

loop do
  if counter >= 9
    puts "Game Over! It's a Tie!"
    break
  else
    puts "Enter A Location!"
    location = gets.chomp.upcase
  end
  if positions.include?(location)
    puts "Good Choice!"
    counter +=1
  else
    puts "That's not a valid location. Choose another"
  end
end
