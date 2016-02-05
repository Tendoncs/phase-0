# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# # 1. Initial Solution


# def create_hash_count (key_value,array_check)
# # array_check.each do |item|
#     counter = 0

#     array_check.map do |value|
#       if value == key_value
#       counter += 1
#       end
#     end
#   return counter
# end


# def mode(array)
#   hash_uniq = Hash.new
#   final_array = Array.new
#   array_uniq = array.clone.uniq
#   largest_hash_value = 0


#   array_uniq.map do |item|
#     freq = create_hash_count(item,array)
#     hash_uniq.store(item,freq)
#       if freq > largest_hash_value
#         largest_hash_value = freq
#       end
#   end


# hash_uniq.each do |key, value|
#   if value == largest_hash_value
#     final_array << key
#   end
# end

#     # array_check.map do |value|
#     #   if value == key_value
#     #   counter += 1
#     #   end
#     # end
#     # final_array
#     #Check for max freq
# # p largest_hash_value
# p final_array
# # return final_array
# end


# mode([1,2,3,3])         # => [3]
# # mode([4.5, 0, 0])       # => [0]
# # mode([1.5, -1, 1, 1.5]) # => [1.5]
# # mode([1,1,2,2])         # => [1,2]
# # mode([1,2,3])           # => [1,2,3], because all occur with equal frequency
# # mode(["who", "what", "where", "who"]) # => ["who"]


# 3. Refactored Solution


def create_hash_count (key_value,array_check)
    counter = 0
    array_check.map do |value|
      if value == key_value
      counter += 1
      end
    end
  return counter
end


def mode(array)
  hash_uniq = Hash.new
  final_array = Array.new

  array_uniq = array.clone.uniq
  largest_hash_value = 0


  array_uniq.map do |item|
    freq = create_hash_count(item,array)
    hash_uniq.store(item,freq)
      if freq > largest_hash_value
        largest_hash_value = freq
      end
  end

hash_uniq.each do |key, value|
  if value == largest_hash_value
    final_array << key
  end
end


final_array
end


# p mode([1,2,3,3])         # => [3]
# p mode([4.5, 0, 0])       # => [0]
# p mode([1.5, -1, 1, 1.5]) # => [1.5]
# p mode([1,1,2,2])         # => [1,2]
# p mode([1,2,3])           # => [1,2,3], because all occur with equal frequency
# p mode(["who", "what", "where", "who"]) # => ["who"]



# 4. Reflection
#question: Which data structure did you and your pair decide to implement and why?

#answer:I used array and hash
#question: Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
#answer: I could not find a pair
#question: What issues/successes did you run into when translating your pseudocode to code?
#answer: nothing
#question: What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
#answer: I used map. I am starting to like the map. For me map seams to work the best.