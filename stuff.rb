@board =  [[" ", " ", " "],
           [" ", " ", " "],
           [" ", " ", " "]]


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

  print_board
