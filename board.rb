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
      (0..2).each do |c|
        print @board[r][c]
        print " | " unless c == 2
      end
      print "\n"
      print " ---------\n" unless r == 2
    end
    print "\n"
  end



winning_positions = [
  ["1", "2", "3"], ["4", "5", "6"], ["7", "8", "9"],
  ["1", "4", "7"], ["2", "5", "8"], ["3", "6", "9"],
  ["1", "5", "9"], ["3", "5", "7"]
]




  puts "Welcome to Tic Tac Toe! Choose a position!"
  puts " 1 | 2 | 3 "
  puts "-----------"
  puts " 4 | 5 | 6 "
  puts "-----------"
  puts " 7 | 8 | 9 "

    puts "Enter A Location!"
    location = gets.chomp.upcase
    positions = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
  if positions.include?(location)
    puts "Good Choice!"
  else
    puts "That's not a valid location. Choose another"
  end


end
