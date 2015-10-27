require './board'
require './position'

@board =  [
  [" ", " ", " "],
  [" ", " ", " "],
  [" ", " ", " "]
]

def display_intro
  puts ""
  puts "Welcome to Tic Tac Toe! "
  puts ""
  puts " A1 | A2 | A3 "
  puts "--------------"
  puts " B1 | B2 | B3 "
  puts "--------------"
  puts " C1 | C2 | C3 "
end

def board_spot
  while @board.any? { |r| r.include?(" ") }
    puts "Enter a position!"
    location = gets.chomp.upcase
    if @accepted_entry.include?(location)
      puts "Nah, already taken bro. Pick another location."
    elsif @positions.include?(location)
    @accepted_entry << location
    update_board(location)
    print_board
    elsif puts "That's not a valid location. Choose another."
    end
  end
  puts "Game Over"
end


display_intro
board_spot
