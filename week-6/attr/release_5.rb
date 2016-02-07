# Release 4:

# refactor this code to move method assignments to attr_ attributes. Like we did with age. Let's pare down the superfluous code.

# Your Code Here:

class Profile
# first let's finish refactoring this code
# note that there is a way to add all of the variables like :age on one line, how would we do that?

  attr_accessor :age
  attr_accessor :name
  attr_accessor :occupation


  def initialize
    self.age = 27
    self.name = "Kim"
    self.occupation = "Cartographer"
  end

  def print_info
    puts "--- retrieving profile information ----"
    10.times do
      print "."
      sleep 0.2
    end
    puts self.age
    sleep 0.8
    puts self.name
    sleep 0.8
    puts self.occupation
    sleep 0.8
  end

end

kim = Profile.new

kim.print_info()

kim.age = 28
kim.name = "Taylor"
kim.occupation = "Rare Coins Trader"

kim.print_info()

