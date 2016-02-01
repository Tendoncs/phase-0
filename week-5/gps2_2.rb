# # Method to create a list
# # input: string of items separated by spaces (example: "carrots apples cereal pizza")
# # steps:
#   # [fill in any steps here]
#   # define an empty array
#   # hash
#   #pareses string
#   # set default quantity
#   # print the list to the console [can you use one of your other methods here?]
# # output: [what data type goes here, array or hash?]

# list = {}

# def create_list(string_of_item)
#   array = []
#   array = string_of_item.split(' ')
#   hash = {}
#   array.each do |item|
#     hash[item] = 0
#   end
#   return hash
# end


# # Method to add an item to a list
# # input: item name and optional quantity
# # steps:
# # output:


# def add_item(list,item,quantity)
#   list[item] = quantity
# end

# # Method to remove an item from the list
# # input:
# # steps:
# # output:

# def remove_item(list,item)
#   list.delete(item)
# end

# # Method to update the quantity of an item
# # input:
# # steps:
# # output:

# def update_quantity(list,item,quantity)
#   list[item] = quantity

# end

# # Method to print a list and make it look pretty
# # input:
# # steps:
# # output:

# def print_list(item_list)
#   puts item_list
# end


# list = create_list("carrots apples cereal pizza")
# # p list
# add_item(list,"ice cream", 2)

# remove_item(list,"apples")

# # PEBCAK problem between chair and keyboard

# update_quantity(list,"carrots", 2)
# p list


#  Refactor


def create_list(string_of_item)
  hash = {}

  string_of_item.split(' ').each do |item|
    hash[item] = 0
  end
  return hash
end

def add_item(list,item,quantity)
  list[item] = quantity
end

def remove_item(list,item)
  list.delete(item)
end

def update_quantity(list,item,quantity)
  add_item(list,item,quantity)
end

def print_list(list)

  puts "Your shopping list\n"

  list.each do |item,quantity|
    # x = 10 - item.length
    # p = " " * x

    puts "#{item}: #{" "* (10 - item.length)} #{quantity}"
  end

end


list = create_list("carrots apples cereal pizza")
add_item(list,"ice cream", 2)
remove_item(list,"apples")
update_quantity(list,"carrots", 2)
print_list(list)


#Question: What did you learn about pseudocode from working on this challenge?
#Answer: nothing..

#Question: What are the tradeoffs of using Arrays and Hashes for this challenge?
#Answer: arrays are good to split off a string

#Question: What does a method return?
#Answer: nothing, or the last thing done or what every you return

#Question: What kind of things can you pass into methods as arguments?
#Answer: Anything really.

#Question: How can you pass information between methods?
#Answer: By calling a method inside a method just like you call a method outside. You can also use return or keep the direct access to the memory pointers.

#Question: What concepts were solidified in this challenge, and what concepts are still confusing?
#Answer: How you are not passing in a variable but passing in a pointer to that variable.So within the method you can update the aurgument you passed in. Also distructive vs non distructive.
