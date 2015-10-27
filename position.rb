class Position
  attr_accessor :board, :game

  def initialize
    @counter = 0
    @accepted_entry = []
    @positions = ["A1", "A2", "A3", "B1", "B2", "B3", "C1", "C2", "C3"]
  end

  winning_positions = [
    ["A1", "A2", "A3"], ["B1", "B2", "B3"], ["C1", "C2", "C3"],
    ["A1", "B1", "C1"], ["A2", "B2", "C2"], ["A3", "B3", "C3"],
    ["A1", "B2", "C3"], ["A3", "B2", "C1"]
  ]

  def print_board
    (0..2).each do |row|
      print " "
      (0..2).each do |col|
        print @board[row][col]
        print " | " unless col == 2
      end
      print "\n"
      print " ---------\n" unless row == 2
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
    positions = ["A1", "A2", "A3", "B1", "B2", "B3", "C1", "C2", "C3"]
    while @board.any? { |r| r.include?(" ") }
      puts "Enter a position!"
      location = gets.chomp.upcase
      if @accepted_entry.include?(location)
        puts "Nah, already taken bro. Pick another location."
      elsif positions.include?(location)
      @accepted_entry << location
      update_board(location)
      print_board
      elsif puts "That's not a valid location. Choose another."
      end
    end
    puts "Game Over"
  end









end
