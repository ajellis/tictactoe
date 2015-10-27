require './board'
require './position'
require './game'

def initialize
  blank_board = [
    [" ", " ", " "],
    [" ", " ", " "],
    [" ", " ", " "]
  ]

  @winning_positions = [
    ["A1", "A2", "A3"], ["B1", "B2", "B3"], ["C1", "C2", "C3"],
    ["A1", "B1", "C1"], ["A2", "B2", "C2"], ["A3", "B3", "C3"],
    ["A1", "B2", "C3"], ["A3", "B2", "C1"]
  ]
end

 @position_new = Position.new
 @board_new = Board.new

 @board_new.display_intro
 @board_new.print_board

 @position_new.board_spot
