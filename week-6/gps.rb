# Your Names
# 1)Alex
# 2)Guide - Jon

# We spent [1.25] hours on this challenge. then another .5 by myself.

# Bakery Serving Size portion calculator.


# Starting code.
# def serving_size_calc(item_to_make, num_of_ingredients)
#   library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
#   error_counter = 3

#   library.each do |food|
#     if library[food] != library[item_to_make]
#       error_counter += -1
#     end
#   end

#   if error_counter > 0
#     raise ArgumentError.new("#{item_to_make} is not a valid input")
#   end

#   serving_size = library.values_at(item_to_make)[0]
#   remaining_ingredients = num_of_ingredients % serving_size

#   case remaining_ingredients
#   when 0
#     return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
#   else
#     return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
#   end
# end

# p serving_size_calc("pie", 7)
# p serving_size_calc("pie", 8)
# p serving_size_calc("cake", 5)
# p serving_size_calc("cake", 7)
# p serving_size_calc("cookie", 1)
# p serving_size_calc("cookie", 10)

# # p serving_size_calc("cookie", 0)
# p serving_size_calc("THIS IS AN ERROR", 5)


# Finished code.

def serving_size_calc(pastry, quantity_ingredients)
  #declare hash
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  #downcase argument
  pastry.downcase!

  #Errors no ingredients and none valid pastry input
  raise ArgumentError.new("You have to have more then zero ingredients") unless quantity_ingredients > 0
  raise ArgumentError.new("#{pastry} is not a valid input") unless library.has_key?(pastry)

  #declare variables
  display_message = ""
  serving_size = library[pastry]
  remaining_ingredients = quantity_ingredients % serving_size
  quantity_pastry = quantity_ingredients / serving_size
  display_message << "Calculations complete: Make #{quantity_pastry} of #{pastry}"
  # TODO change code to be dynamic with library changes.

  if remaining_ingredients > 0
    display_message << ", you have #{remaining_ingredients} ingredients left. You could also make" #Suggested baking items: TODO: MAKE THIS FEATURE

    #Logic for remaining and extra pastry TODO: change hardcoded quainities
    if remaining_ingredients >= 5 then
      display_message <<  " 1 cake"
      cake_extra = 1
      cookie_extra = remaining_ingredients - 5
    else
      cake_extra = 0
      cookie_extra = remaining_ingredients
    end
    if remaining_ingredients > 5 then
      display_message <<  " and"
    end
    if cookie_extra > 0 then
      display_message <<  " #{cookie_extra} cookies"
    end
  end
  return display_message

end

#Error testing
error_testing = 0

if error_testing == 0 then
p serving_size_calc("pie", 13)
p serving_size_calc("Pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("Cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("Cookie", 10)
elsif error_testing == 1 then
# p serving_size_calc("pie", -2)
# p serving_size_calc("Pie", 0)
# p serving_size_calc("Cake", 0)
# p serving_size_calc("cake", -14)
# p serving_size_calc("cookie", 0)
# p serving_size_calc("Cookie", -1)
# p serving_size_calc("THIS IS AN ERROR", 5)
end



#  Reflection

#question: What did you learn about making code readable by working on this challenge?
#answer: You can make code look nasty.
#question: Did you learn any new methods? What did you learn about them?
#answer: you can calle downside on an input argument
#question: What did you learn about accessing data in hashes?
#answer: It is easy to do if you call the right thing.
#question: What concepts were solidified when working through this challenge?
#answer: Some cool shortcuts