class Board

  def initialize
    @board =  [
      [" ", " ", " "],
      [" ", " ", " "],
      [" ", " ", " "]
    ]
  end


  def display_intro
    puts "Welcome to Tic Tac Toe!"
    puts "The Board positions are as follows."
    puts " A1 | A2 | A3 "
    puts "----+----+----"
    puts " B1 | B2 | B3 "
    puts "----+----+----"
    puts " C1 | C2 | C3 "
  end

  def print_board
    (0..2).each do |row|
      print " "
      (0..2).each do |col|
        print @board[row][col]
        print " | " unless col == 2
      end
      print "\n"
      print " --+---+--\n" unless row == 2
    end
    print "\n"
  end





end
