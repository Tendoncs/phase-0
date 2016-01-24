# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

# def cartman_hates(thing)
#   while true
#     puts "What's there to hate about #{thing}?"
# end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#errors.rb
# 2. What is the line number where the error occurs?
#175
# 3. What is the type of error message?
#unexpected end of input
# 4. What additional information does the interpreter provide about this type of error?
# it is looking for a keyword end
# 5. Where is the error in the code?
#like 14-15
# 6. Why did the interpreter give you this error?
#The while has no end.

# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
#35
# 2. What is the type of error message?
#<main>': undefined local variable or method `south_park' for main:Object (NameError)
# 3. What additional information does the interpreter provide about this type of error?
#undefined variable or method
# 4. Where is the error in the code?
#35 or 34
# 5. Why did the interpreter give you this error?
#Either this is a undefined variable or method or it is calling a method that was not created.

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
#50
# 2. What is the type of error message?
#main undefined method
# 3. What additional information does the interpreter provide about this type of error?
#nomethoderror
# 4. Where is the error in the code?
#50
# 5. Why did the interpreter give you this error?
#It is calling a method that is not there

# --- error -------------------------------------------------------

# def cartmans_phrase
#   puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
#65
# 2. What is the type of error message?
#wrong arguments
# 3. What additional information does the interpreter provide about this type of error?
#1 argument is coming in for 0 being required
# 4. Where is the error in the code?
#argumenterror
# 5. Why did the interpreter give you this error?
#The method does not have an argument

# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
#   puts offensive_message
# end

# cartman_says

# 1. What is the line number where the error occurs?
#84
# 2. What is the type of error message?
#argument error
# 3. What additional information does the interpreter provide about this type of error?
#wrong number of arguments going in
# 4. Where is the error in the code?
#88,
# 5. Why did the interpreter give you this error?
#should have some sort of message at line 88



# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
#105
# 2. What is the type of error message?
#argumenterror
# 3. What additional information does the interpreter provide about this type of error?
#wrong number of arugments
# 4. Where is the error in the code?
#109
# 5. Why did the interpreter give you this error?
#it is sending in only 1 arguments

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
#124
# 2. What is the type of error message?
#TypeError
# 3. What additional information does the interpreter provide about this type of error?
#String cant be coerced into a fixnum
# 4. Where is the error in the code?
#124
# 5. Why did the interpreter give you this error?
#Wrong order of operations.

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
#139
# 2. What is the type of error message?
#ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
#Cant divid by zero
# 4. Where is the error in the code?
#139
# 5. Why did the interpreter give you this error?
#Cant divid by zero

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#155
# 2. What is the type of error message?
#LoadError
# 3. What additional information does the interpreter provide about this type of error?
#Can not load such a file.
# 4. Where is the error in the code?
# 155  also in the directory
# 5. Why did the interpreter give you this error?
#There is no file in the dir



# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.


# Question: Which error was the most difficult to read?
# Answer: the end error is a little hard to read because it tells it is at the end of the file and not where it should be.


# Question: How did you figure out what the issue with the error was?
# Answer: Just used to testing errors.

# Question: Were you able to determine why each error message happened based on the code?
# Answer: Yes.

# Question: When you encounter errors in your future code, what process will you follow to help you debug?
# Answer: Start at the top and work out. Also IDE have good breakpoints that help.


