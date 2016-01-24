#!/usr/bin/ruby

def whats (tempN)
puts "Whats your " + tempN + " name?"
tempC = gets.chomp
tempS = tempC.to_s
tempS.slice(0,1).capitalize + tempS.slice(1..-1)
end

first_name = whats("First")
middle_name = whats("Middle")
last_name = whats("Lasts")

greeting = "Hello there Nice to meet you " + first_name.to_s + " " + middle_name.to_s + " " + last_name.to_s

p greeting

puts first_name + ", what is your favorite number?"
number = gets.to_i

bigger = number + 1

puts "well my favorite number is " + bigger.to_s


# Question: How do you define a local variable?
# Answer:
# just state the name and set it to something.

# Question: How do you define a method?
# Answer:
# def method
# You type def then the name. You can do
# def method (input1,input2)


# Question: What is the difference between a local variable and a method?
# Answer:
# Variable points to a point in memory and a method points to a section of code.

# Question: How do you run a ruby program from the command line?
# Answer:
# ruby FileName

# Question: How do you run an RSpec file from the command line?
# Answer:
# rspec FileName
# In the RSpec file you need to include the other files name.

# Question: What was confusing about this material? What made sense?
# Answer:
# It was not clear to me does RSpec test a ruby file's friend?
