# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution

def separate_comma (numb)
counter = 1
numstring = numb.to_s.reverse
stringlength = numstring.length
finalstring = ""

numstring.each_char do |i|
  finalstring += i
    if counter % 3 == 0 && counter < stringlength
      finalstring += ","
    end
    counter += 1
  end
  return finalstring.reverse
end

# 2. Refactored Solution 0.00222

# def separate_comma(num)
#   num.to_s.chars.to_a.reverse.each_slice(3).map(&:join).join(",").reverse
# end


# 3. Reflection
#answer:

#Question: What was your process for breaking the problem down? What different approaches did you consider?
#answer: just took it in basic sections. Nothing new.

#Question: Was your pseudocode effective in helping you build a successful initial solution?
#answer: It helps.

#Question:  What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
#answer: each_slice and map and join. I started research and found a great one-liner.

#Question:  How did you initially iterate through the data structure?
#answer: A do each loop

#Question: Do you feel your refactored solution is more readable than your initial solution? Why?
#answer: No the refactored solution looked cool and worked great but it ran solower and was harder to read.


