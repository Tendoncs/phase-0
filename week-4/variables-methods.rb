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


