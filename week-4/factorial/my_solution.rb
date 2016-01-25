# Factorial

# I worked on this challenge [by myself, with: Alexander Williams].


# Your Solution Below
def factorial(number)
  # Declare temp variable
  counter = 1
  factorial = number
  return_number = 1
  # Start while loop until number is greater than number
  while counter <= number
  # Multiply counter times temp variable
    # puts counter
    if counter != 0
      return_number = counter * return_number
    end
    counter = counter + 1
  # Return temp variable
  end
  return return_number
end