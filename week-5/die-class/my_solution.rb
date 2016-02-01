# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input:
# Output:
# Steps:


# 1. Initial Solution

class Die
  def initialize(sides)
    unless sides < 1
    raise ArgumentError.new("Only numbers Larger then 0")
    end

    @side_of_die = sides
    # if @side_of_die < 1
    #   raise Exception.new("error")
    # else
    # end
    # code goes here
  end

  def sides
    return @side_of_die
  end

  def roll
    # code goes here
    p rand(1..@side_of_die)
  end
end



# 3. Refactored Solution







# 4. Reflection

# question: What is an ArgumentError and why would you use one?
# answer:
# question: What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
# answer:
# question: What is a Ruby class?
# answer:
# question: Why would you use a Ruby class?
# answer:
# question: What is the difference between a local variable and an instance variable?
# answer:
# question: Where can an instance variable be used?