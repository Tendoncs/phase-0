# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


# Initial Solution

# In this challenge you want to create a simple guessing game. Think in terms of when you were 7 and asked your friends to identify the number you were thinking...

# Your GuessingGame class should be initialized with an integer called answer.

# Define an instance method GuessingGame#guess which takes an integer called guess as its input. guess should return the symbol :high if the guess is larger than the answer, :correct if the guess is equal to the answer, and :low if theguess is lower than the answer.

# Define an instance method GuessingGame#solved? which returns true if the most recent guess was correct and false otherwise.

# In this case, we're asking you to use symbols for :low, :high, and :correct. This is partly due to the way strings and symbols are stored in memory.

# For example:

# game = GuessingGame.new(10)

# game.solved?   # => false

# game.guess(5)  # => :low
# game.guess(20) # => :high
# game.solved?   # => false

# game.guess(10) # => :correct
# game.solved?   # => true
# Or:

# game = GuessingGame.new rand(100)
# last_guess  = nil
# last_result = nil

# until game.solved?
#   unless last_guess.nil?
#     puts "Oops!  Your last guess (#{last_guess}) was #{last_result}."
#     puts ""
#   end

#   print "Enter your guess: "
#   last_guess  = gets.chomp.to_i
#   last_result = game.guess(last_guess)
# end

# puts "#{last_guess} was correct!"



# class GuessingGame
#   def initialize(answer)
#     @answer = answer
#     @solved = false
#   end

#   def guess(guess)
#     if guess == @answer then
#       @solved = true
#       return :correct
#     # elsif guess >= 100 then
#     #   @solved = false
#     #   return :high
#     # elsif guess <= 0 then
#     #   @solved = false
#     #   return :high
#     elsif guess > @answer #&&  guess < 100 then
#       @solved = false
#       return :high
#     elsif guess < @answer #&& guess > 0 then
#       @solved = false
#       return :low
#     end
#   end

#   def solved?
#     return @solved
#   end



# end

# test = GuessingGame.new(10)
# p test.guess(8)
# p test.solved?
# p test.guess(22)
# p test.solved?
# p test.guess(10)
# p test.solved?
# p test.guess(8)
# p test.solved?
# p test.guess(22)
# p test.solved?
# p test.guess(10)
# p test.solved?
# # # p test.answerget

# game = GuessingGame.new rand(100)
# last_guess  = nil
# last_result = nil

# until game.solved?
#   unless last_guess.nil?
#     puts "Oops!  Your last guess (#{last_guess}) was #{last_result}."
#     puts ""
#   end

#   print "Enter your guess: "
#   last_guess  = gets.chomp.to_i
#   last_result = game.guess(last_guess)
# end

# puts "#{last_guess} was correct!"



# Refactored Solution


class GuessingGame
  def initialize(answer)
    @answer = answer
    @solved = false
  end
  def guess(guess)
    if guess == @answer then
      @solved = true
      return :correct
    elsif guess > @answer
      @solved = false
      return :high
    elsif guess < @answer
      @solved = false
      return :low
    end
  end
  def solved?
    return @solved
  end
end





# Reflection

#question:How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
#answer: what? I think I understand what you are asking. It is asking instance variable so I am assuming this is in the contaxt of a class. When you combine methods and instance variables you can build a class to mimic things like a human. You can create things like name, height, eye color and job. This allows you represent things in real life.
#question:When should you use instance variables? What do they do for you?
#answer: Instance variable are for classes and it allows things within the class to share.
#question:Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
#answer: Yes, but no idea with what. I had a problem with high and low but no idea why. FLow control is how you do if else control. I like to start with == then move on. If you are worried about speed you can start with the most common answer or the quickest answer.
#question:Why do you think this code requires you to return symbols? What are the benefits of using symbols?
#answer: I have no idea. The only thing I can figure out is it uses the same place in memory. I am still researching these.