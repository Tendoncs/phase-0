# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: Ben ].




# 0. total Pseudocode

# #method that takes in array of numbers and adds
# def total (number_array)
# #temp var
# temp_var = 0
# #sum up array

#   number_array.each do |num|
#     temp_var += num

#   end
# return temp_var
# #return array
# end

#try 2


def total (number_array)
  number_array.inject{|temp_var,number_array|temp_var+number_array}
end

  # string_array.inject{|temp_string,string_array| temp_string + " " +string_array.to_s}
  #  temp_string += "."
  #  temp_string = temp_string.capitalize


def sentence_maker (string_array)
  temp_string = string_array.join(" ")
  temp_string += "."
  temp_string.capitalize
end


# temp = "Cats", "fun", "hats"
# sentence_maker(temp)


# p total([1,2,3])
# p total([4.5, 0, -1]) # => 3.5
# p total([-100, 100])  # => 0
# make sure all pseudocode is commented out!

# Input:
# Output:
# Steps to solve the problem.


# 1. total initial solution



# 3. total refactored solution



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input:
# Output:
# Steps to solve the problem.


# 5. sentence_maker initial solution


def sentence_maker (string_array)
  temp_string = string_array.join(" ")
  temp_string += "."
  temp_string.capitalize
end



# 6. sentence_maker refactored solution

def sentence_maker (string_array)
  temp_string = string_array.join(" ")
  temp_string += "."
  temp_string.capitalize
end


