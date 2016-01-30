# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# # 1. Initial Solution
# def pad!(array, min_size, value = nil) #destructive
#   # Your code here
#   # Check array length array.length
# array_length = array.length

# if array_length < min_size

#   while array_length < min_size  do
#    array.push(value)
#    array_length +=1
#    return array
#  # self.concat(Array.new(array, value))
#   end
# end

# # end

def pad!(array, min_size, value = nil) #non-destructive
  # Your code here
  array_length = array.length
  array2 = array

  if array_length < min_size

    while array_length < min_size  do
     array2.push(value)
     array_length +=1
    end
  end
  return array2
end

def pad(array, min_size, value = nil) #non-destructive
  # Your code here
  array_length = array.length
  array2 = array.clone

  if array_length < min_size

    while array_length < min_size  do
     array2.push(value)
     array_length +=1
    end
  end
  return array2
end


def pad(array, min_size, value = nil)
pad!(array.clone, min_size, value)
array_length = array.length

if array_length < min_size
  while array_length < min_size  do
  array2.push(value)
  array_length +=1
  end
end


end
  # array_length = array.length
  # array2 = array

  # if array_length < min_size

  #   while array_length < min_size  do
  #    array2.push(value)
  #    array_length +=1
  #   end
  # end
  # return array2
# end




# 3. Refactored Solution



# 4. Reflection


# Question: Were you successful in breaking the problem down into small steps?
# answer:
# yes. we got stuck on .clone. We started off not 100% sure on what makes a distruvtive vs non distructive

# Question: Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
# answer: No, we ran into an issue with .clone.


# Question: Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
# answer: nope. .clone


# Question: When you refactored, did you find any existing methods in Ruby to clean up your code?
# answer: We tried a few and it did not work so we stuck with the working code.


# Question: How readable is your solution? Did you and your pair choose descriptive variable names?
# answer: very


# Question: What is the difference between destructive and non-destructive methods in your own words?
# answer: destructive points to the orginal space in memory and non creates a new memory space for the edited data.



