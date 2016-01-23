#!/usr/bin/ruby

def compAdd(numA,numB)
  numA + numB
end

def compDiff(numA,numB)
  if numA > numB
    numA - numB
  else
    numB - numA
  end

end

def compQuo(numA,numB)
  if numA > numB
    numA.to_f/numB
  else
    numB.to_f/numA
  end
end

def compProd(numA,numB)
numA * numB
end

def compMod(numA,numB)
  if numA > numB
    numA.to_f%numB
  else
    numB.to_f%numA
  end
end

# get numbers
puts "whats you first favorite number?"
num1 = gets.to_i
puts "whats you second favorite number?"
num2 = gets.to_i

# do math
sum = compAdd num1,num2
difference = compDiff num1,num2
quotient = compQuo num1,num2
product = compProd num1,num2
modulus = compMod num1,num2

# print results
puts
puts "Sum: " + sum.to_s
puts "difference: " + difference.to_s
puts "quotient: " + quotient.to_s
puts "product: " + product.to_s
puts "modulus: " + modulus.to_s



