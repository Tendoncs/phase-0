# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================

p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}
#hash = {:outer =>{:inner =>{"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================

# p hash
p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================

p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

# indexed_list.each { |element| puts element }

number_array.map! { |num|
  if num.kind_of?(Array)
    # num.each {|inn_num| number_array[num][inn_num].to_i += 5} # inn_num += 5}
    num.map! {|inn_num| inn_num += 5}
  else
    # number_array[num] += 5
     num += 5
  end
  }

p number_array
# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

p startup_names.map! { |name|
  if name.kind_of?(Array)
     name.map! {|inn_name|
    if inn_name.kind_of?(Array)
      inn_name.map! {|inner_inner| inner_inner += "ly"}
    else
      inn_name +=  "ly"
    end
      }
  else
     name + "ly"
  end
  }


#  reflect

#Question: What are some general rules you can apply to nested arrays?
#answer: Dont do it. If you have to writing it out on paper can help.
#Question: What are some ways you can iterate over nested arrays?
#answer: .each .map
#Question: Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
#answer: The bonus one could have had a method to clean up the code a little.
