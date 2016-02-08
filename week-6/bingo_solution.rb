# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here

# Check the called column for the number called.
  #fill in the outline here

# If the number is in the column, replace with an 'x'
  #fill in the outline here

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  #fill in the outline here

# Initial Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#     @called_numbers = Array.new
#     @bingo = Array.new
#     @bingo = "B","I","N","G","O"
#     @game_status = false
#   end

#   def call_number

#     letter = [rand(5), rand(100)]
#     letter_check = letter[0]
#     number_check = letter[1]

#     @called_numbers << letter
#     return letter
#   end

#   def print_board(array,index)

#     temp_string = ""
#     array[index].each do |number|
#       if number.to_s == "X"
#         temp_string << "  #{number.to_s}"
#       else
#         if number.to_s.length == 1
#           temp_string << " 0#{number.to_s}"
#         elsif number.to_s.length == 2
#           temp_string << " #{number.to_s}"
#         elsif number.to_s.length == 2
#         end
#       end
#       temp_string << "  "
#     end
#     temp_string
#   end


#   def display_card

#     while @game_status == false
#       system "clear"
#       string = " "
#       temp = call_number
#       letter = @bingo[temp[0]]
#       update_card(temp[0],temp[1])


#       puts "new number: #{letter}-#{temp[1]} "
#       puts " "
#       puts " B    I    N    G    O"
#       puts self.print_board(@bingo_board,0)
#       puts self.print_board(@bingo_board,1)
#       puts self.print_board(@bingo_board,2)
#       puts self.print_board(@bingo_board,3)
#       puts self.print_board(@bingo_board,4)
#       puts " "
#       # puts @called_numbers
#       puts  "Hit enter for you next number"
#       a = gets.chomp
#     end
#   end

#   def update_card(letter, number)
#     @bingo_board.each_with_index do |array,index|
#       if array[letter] == number
#         @bingo_board[index][letter] = "X"
#       end
#     end
#   end
# end

# Refactored Solution


class BingoBoard

  def initialize(board)
    @bingo_board = board
    @called_numbers = Array.new
    @bingo = Array.new
    @bingo = "B","I","N","G","O"
    @game_status = false
  end

  def call_number

    letter = [rand(5), rand(100)]
    letter_check = letter[0]
    number_check = letter[1]

    @called_numbers << letter
    return letter
  end

  def print_board(array,index)

    temp_string = ""
    array[index].each do |number|
      if number.to_s == "X"
        temp_string << "  #{number.to_s}"
      else
        if number.to_s.length == 1
          temp_string << " 0#{number.to_s}"
        elsif number.to_s.length == 2
          temp_string << " #{number.to_s}"
        elsif number.to_s.length == 2
        end
      end
      temp_string << "  "
    end
    temp_string
  end


  def display_card

    while @game_status == false
      system "clear"
      string = " "
      temp = call_number
      letter = @bingo[temp[0]]
      update_card(temp[0],temp[1])


      puts "new number: #{letter}-#{temp[1]} "
      puts " "
      puts " B    I    N    G    O"
      puts self.print_board(@bingo_board,0)
      puts self.print_board(@bingo_board,1)
      puts self.print_board(@bingo_board,2)
      puts self.print_board(@bingo_board,3)
      puts self.print_board(@bingo_board,4)
      puts " "
      # puts @called_numbers
      puts  "Hit enter for you next number"
      a = gets.chomp
    end
  end

  def update_card(letter, number)
    @bingo_board.each_with_index do |array,index|
      if array[letter] == number
        @bingo_board[index][letter] = "X"
      end
    end
  end
end



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)


# 10.times { p new_game.call_number }
# system "clear"
new_game.display_card

#Reflection


#question: Does your call method return a letter and a number?
#answer: Kind off. It returns two numbers and the first number is 0-4 for bingo it uses a key to convert.
#question: Does your check method replace the number with a string if the number is present?
#answer: Yes
#question: Does your check method not replace anything if the number is not present?
#answer: yes
#question: Does the board display to the console correctly? You can check this using your eyes.
#answer: Yes.


