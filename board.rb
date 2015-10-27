
    @board =  [
      [" ", " ", " "],
      [" ", " ", " "],
      [" ", " ", " "]
    ]

    @counter = 0

    @accepted_entry = []

  def print_board
    (0...2).each do |row|
      print " "
      (0...2).each do |col|
        print @board[row][col]
        print " | "
      end
      print "\n"
      print " ---------\n"
    end
    print "\n"
  end

  winning_positions = [
    ["A1", "A2", "A3"], ["B1", "B2", "B3"], ["C1", "C2", "C3"],
    ["A1", "B1", "C1"], ["A2", "B2", "C2"], ["A3", "B3", "C3"],
    ["A1", "B2", "C3"], ["A3", "B2", "C1"]
  ]



  def display_intro
    puts ""
    puts " A1 | A2 | A3 "
    puts "--------------"
    puts " B1 | B2 | B3 "
    puts "--------------"
    puts " C1 | C2 | C3 "
  end

  def check_user
    loop do
      if @counter >= 9
        puts "Game Over!"
        break
      else
        puts ""
        puts "Welcome to Tic Tac Toe! Choose a position!"
        location = gets.chomp.upcase
      end
        positions = ["A1", "A2", "A3", "B1", "B2", "B3", "C1", "C2", "C3"]
      if @accepted_entry.include?(location)
        puts "Nah. Already Taken. Try Somewhere else."
      elsif positions.include?(location)
        puts "Good Choice!"
        @counter +=1
        @accepted_entry << location
    else
      puts "That's not a valid location. Choose another"
    end
  end
end




display_intro
check_user
