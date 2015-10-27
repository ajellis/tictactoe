class Position


  def initialize
    @counter = 0
    @accepted_entry = []
    @positions = ["A1", "A2", "A3", "B1", "B2", "B3", "C1", "C2", "C3"]
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

  def row(input)
    hash = { "A" => 0, "B" => 1, "C" => 2 }
    hash[input[0]]
  end

  def col(input)
    input[1].to_i - 1
  end

  def update_board(input)
    @board[row(input)][col(input)] = "X"
  end

  def board_spot
    while @counter <= 8
    # while @board.any? { |row| row.include?(" ") }
      puts "Enter a position!"
      location = gets.chomp.upcase
      if @accepted_entry.include?(location)
        puts "Nah, already taken bro. Pick another location."
      elsif @positions.include?(location)
      @accepted_entry << location
      @counter += 1
      self.update_board(location)
      self.print_board
      elsif puts "That's not a valid location. Choose another."
      end
    end
    puts "Game Over"
  end









end
