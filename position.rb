class Position
  require './game'

  attr_reader :board, :accepted_entries, :positions, :winning_lines

  def initialize
    @accepted_entries = []
    @positions = ["A1", "A2", "A3", "B1", "B2", "B3", "C1", "C2", "C3"]
    @board =  [
      [" ", " ", " "],
      [" ", " ", " "],
      [" ", " ", " "]
    ]
    @winning_lines = [
      ["A1", "A2", "A3"], ["B1", "B2", "B3"], ["C1", "C2", "C3"],
      ["A1", "B1", "C1"], ["A2", "B2", "C2"], ["A3", "B3", "C3"],
      ["A1", "B2", "C3"], ["A3", "B2", "C1"]
    ]
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

  def update_board(location, marker)
    puts location
    puts marker
    @board[row(location)][col(location)] = marker
  end


  # def board_spot
  #  while @counter <= 8
  #    puts "Enter a position!"
  #    @location = gets.chomp.upcase
  #    if @accepted_entries.include?(@location)
  #      puts "Nah, already taken bro. Pick another location."
  #    elsif @positions.include?(@location)
  #      @accepted_entries << @location
  #      @counter += 1
  #      update_board(@location)
  #      print_board
  #      @winning_lines.each do |line|
  #        return puts "YOU WIN! Congratulations!" if line.all? {|p| @accepted_entries.include?(p)}
  #      end
  #    elsif puts "That's not a valid location. Choose another."
  #    end
  #  end
  #  puts "Game Over. It's a Tie!"
  #  @game_over = true
  # end

end
