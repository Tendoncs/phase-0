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