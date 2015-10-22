@counter = 0
positions = ["A1", "B1", "C1", "A2", "B2", "C2", "A3", "B3", "C3"]

def empty_board
  2.times do
    puts "__|__|__"
  end
  puts "  |  |"
end




def intro_text
  puts "Welcome to Tic Tac Toe! Choose a position!"

  puts "Valid locations are A1 (top-left), A2 (top-center), A3 (top-right), B1 (middle-left), B2 (middle-center), B3 (middle-right),
      C1 (bottom-left), C2 (bottom-center), and C3 (bottom-right)"
end

# def get_location
#   loop do
#     if counter >= 8
#       break
#     else
#       puts "Enter A Location!"
#
#       @location = gets.chomp.upcase
#
#     end
#     if positions.!include?(@location)
#       puts "That's not a valid position."
#     else
#       puts "Good Choice!"
#       @counter +=1
#     end
#   end
# end


intro_text
empty_board
# get_location
