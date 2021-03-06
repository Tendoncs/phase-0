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
    @side_of_die = sides
    if @side_of_die < 1
    raise ArgumentError.new("Only numbers Larger then 0")
    end

  end

  def sides
    return @side_of_die
  end

  def roll
    p rand(1..@side_of_die)
  end
end



# 3. Refactored Solution




# 4. Reflection

# question: What is an ArgumentError and why would you use one?
# answer:raise ArgumentError um. it worked.
# question: What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
# answer: class. initialize was new. Not sure how that really works.
# question: What is a Ruby class?
# answer: It is an object.
# question: Why would you use a Ruby class?
# answer: it is a good way to build a set of tools.
# question: What is the difference between a local variable and an instance variable?
# answer: instance is for the whole class to use local is just for the method.
# question: Where can an instance variable be used?
# answer: in the class