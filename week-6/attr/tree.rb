# class Tree

#   attr_reader :name

#   def initialize(plant_name)
#     @name = plant_name
#   end

# end


# class Garden

#   attr_reader :plants

#   def initialize
#     @plants = []
#   end

#   def add(plant)
#     @plants << plant
#   end

# end

# class Emitter
#   def important_method
#     return 5
#   end
# end

# class Receiver
#   def initialize
#     @emitter = Emitter.new
#   end

#   def use_data
#     puts @emitter.important_method + 5
#   end
# end
# my_tree = Tree.new("Japanese Maple")
# my_tree.name #=> "Japanese Maple"

# my_garden = Garden.new
# my_tree = Tree.new("Japanese Maple")
# my_garden.add(my_tree)
# my_garden.plants.each { |plant| puts plant.name } #=> "Japanese Maple"



# receiver = Receiver.new
# receiver.use_data #=> 10

# greet = Greetings.new
# greet.hello # puts "Hello Student! How wonderful to see you today."


# You will have 2 classes, NameData and Greetings. NameData will initialize a @name variable with your name. Greetingswill initialize an instance of NameData and include a method to display a salutation to the console.

# It should look something like this:

# greet = Greetings.new
# greet.hello # puts "Hello Student! How wonderful to see you today."


class NameData
def initialize
    @name = "Alex"

  end
  def name
    return @name
  end

end


class Greetings
def initialize
    temp = NameData.new
    @alex = temp.name
  end

  def salutation
    "Hello #{@alex}"
  end

end

hello = Greetings.new
p hello.salutation
