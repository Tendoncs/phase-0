# Calculate a Grade

# I worked on this challenge [by myself, with: ].


# Your Solution Below


# def get_grade (num)
# if num >= 90
#   return "A"
# elseif num < 90 && num >= 80
#   return "B"
# elseif num < 80 && num >= 70
#   return "C"
# elseif num < 70 && num >= 60
#   return "D"
# elseif num < 60
#   return "F"
# end

# end

def get_grade (num)
if num.between?(90, 100)
  return "A"
elsif num.between?(80,90)
  return "B"
elsif num.between?(70,80)
  return "C"
elsif num.between?(60,70)
  return "D"
elsif num.between?(0,60)
  return "F"
end

end


p get_grade(88)