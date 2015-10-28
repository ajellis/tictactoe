require './position'
require './board'
require './player'


class Game < Position

  attr_reader :current_player

  def initialize
    game_start
    @position = Position.new
    @current_player = @player1
  end

  def play
    counter = 0
    while counter <= 8
      puts @current_player.name
      puts @current_player.marker
      puts "Enter a position!"
      location = gets.chomp.upcase
      if @position.positions.include?(location) && @position.accepted_entries.include?(location) == false
        @position.accepted_entries << location
        puts @position.accepted_entries
        counter += 1
        @position.update_board(location, @current_player.marker)
        @position.print_board
        @position.winning_lines.each do |line|
          return puts "YOU WIN! Congratulations!" if line.all? {|p| @position.accepted_entries.include?(p)}
        end
      elsif puts "Location entry not accepted. Choose another."
        switch_player
      end
      switch_player
    end
    puts "Game Over. It's a Tie!"

  end


  private def switch_player
    @current_player = (@current_player == @player1 ? @player2 : @player1)
  end

  private def game_start
    @position_new = Position.new
    @board_new = Board.new
    puts ""
    puts "Welcome to Tic Tac Toe! "
    puts ""
    puts "Player 1, enter your name please:"
    p1 = gets.chomp
    puts ""
    @player1 = Player.new(p1, "X")
    puts "#{@player1.name}, sweet name!"
    puts ""
    puts "You're going to be X"
    puts ""
    puts "Player 2, What's your name?"
    p2 = gets.chomp
    puts ""
    @player2 = Player.new(p2, "O")
    puts "#{@player2.name}, not bad."
    puts ""
    puts "You're O.  Good luck!"
    Board.new.display_intro
  end

end
