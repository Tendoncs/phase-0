# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# assign to array
# count array length
# random length
# use that number as index for return of char.


# Input:
# Output:
# Steps:


# Initial Solution

# class Die
#   def initialize(labels)
#     unless labels.count > 0
#       raise ArgumentError.new("Number must be greater than 1")
#     end
#     @labels = labels
#   end

#   def sides
#     return @labels.count
#   end

#   def roll
#     return @labels[rand(1..@labels.count)-1]
#   end
# end


# Refactored Solution

class Die
  def initialize(labels)
    unless labels.count > 0
      raise ArgumentError.new("Number must be greater than 1")
    end
    @labels = labels
  end

  def sides
    return @labels.count
  end

  def roll
    return @labels[rand(1..@labels.count)-1]
  end
end


# Reflection

#answer:
#question:What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
#answer: Not really. Just changed from a number to a count and use that to return in array
#question:What does this exercise teach you about making code that is easily changeable or modifiable?
#answer: do not reinvent the wheel.
#question:What new methods did you learn when working on this challenge, if any?
#answer: none.
#question:What concepts about classes were you able to solidify in this challenge?
#answer: just more practice with them