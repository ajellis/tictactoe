require './position'
require './board'
require './player'


class Game


  def initialize
    @player1 = nil
    @player2 = nil
  end

  def game_start
    puts ""
    puts "Welcome to Tic Tac Toe! "
    puts ""
    puts "Player 1, enter your name please:"
    p1 = gets.chomp
    puts ""
    @player1 = Player.new(p1)
    puts "#{@player1.name}, sweet name!"
    puts ""
    puts "You're going to be X"
    puts ""
    puts "Player 2, What's your name?"
    p2 = gets.chomp
    puts ""
    @player2 = Player.new(p2)
    puts "#{@player2.name}, not bad."
    puts ""
    puts "You're O.  Good luck!"
  end

end
