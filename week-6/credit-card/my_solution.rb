# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


# Initial Solution


# class CreditCard

#   def initialize(card_num)
#     @card_num = card_num.to_s.delete(" ").chars.map(&:to_i)
#     raise ArgumentError unless @card_num.length == 16
#   end

#   def check_card
#     temp_string = ""
#     temp = Array.new

#     @card_num.each_with_index.map do |num, i|
#       if i.odd? then
#         temp_string << num.to_s
#       else
#         temp_string << (num*2).to_s
#       end
#     end

#     temp = temp_string.chars.map(&:to_i)
#     sum = temp.inject(0){|sum, x| sum + x}

#     if sum % 10 == 0
#       return true
#     else
#       return false
#     end
#   end
# end


class CreditCard

  def initialize(card_num)
    @card_num = self.clean_convert_string(card_num)
    raise ArgumentError unless @card_num.length == 16
  end

  def clean_convert_string(string)
    return string.to_s.delete(" ").chars.map(&:to_i)
  end

  def check_card
    temp_string = ""

    @card_num.each_with_index.map do |num, i|
      if i.odd? then
        temp_string << num.to_s
      else
        temp_string << (num*2).to_s
      end
    end

    if (self.clean_convert_string(temp_string)).inject(0){|sum, x| sum + x} % 10 == 0
      return true
    else
      return false
    end
  end
end




# Reflection

#question: What was the most difficult part of this challenge for you and your pair?
#answer: There was just a lot of moving parts to figure out at frist.
#question: What new methods did you find to help you when you refactored?
#answer: I learned about each_with_index and inject
#question: What concepts or learnings were you able to solidify in this challenge?
#answer: Nothing really in this one. Got more work with moving data around.