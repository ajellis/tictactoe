class Board

  def initialize
    @board =  [
      [" ", " ", " "],
      [" ", " ", " "],
      [" ", " ", " "]
    ]
  end


  def print_board
    (0..2).each do |r|
      print " "
      (0...2).each do |c|
        print @board[r][c]
        print " | "
      end
      print "\n"
      print " ---------\n" unless r == 2
    end
    print "\n"
  end


winning_positions = [
  ["A1", "A2", "A3"], ["B1", "B2", "B3"], ["C1", "C2", "C3"],
  ["A1", "B1", "C1"], ["A2", "B2", "C2"], ["A3", "B3", "C3"],
  ["A1", "B2", "C3"], ["A3", "B2", "C1"]
]




  puts ""
  puts "Welcome to Tic Tac Toe! Choose a position!"
  puts ""
  puts " A1 | A2 | A3 "
  puts "--------------"
  puts " B1 | B2 | B3 "
  puts "--------------"
  puts " C1 | C2 | C3 "


  location = gets.chomp.upcase
  positions = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
  if positions.include?(location)
    puts "Good Choice!"
  else
    puts "That's not a valid location. Choose another"
  end


end
