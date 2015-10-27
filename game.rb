require './position'
require './board'
require './player'

class Game

  attr_reader :player1, :player2

  def initialize
    @player1 = player1
    @player2 = player2
  end

  def begin
    puts ""
    puts "Welcome to Tic Tac Toe! "
    puts ""
    puts "Player 1, enter your name please:"
    p1 = gets.chomp
    @player1 = Player.new(p1)
    puts "#{@player1}, sweet name!"
    puts ""
    puts "Player 2, What's your name?"
    p1 = gets.chomp
    @player2 - Player.new(p2)
  end

end
