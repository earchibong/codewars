=begin
Create a method called "power" that takes two integers and returns the value of 
the first argument raised to the power of the second. Return nil if the second 
argument is negative.
Note: The ** operator has been disabled.

PROBLEM
input = 2 integers: int1, int2 
output = integer that...
- is the value of the first integer raised to the power of the 2nd integer.
  - first integer ** second Integer

  Rule = 
- exponent operator: ** cannot be used.

Data structure = integer 
algorithm = 
given two integers: int1, int2 
- if int2 is negative, return nil 
- initialize a new array populating it with int2 and int1
- iterate over the array and multiply the number times eqaul to int2
- 
Examples:
=end

def power(int1, int2)
  return nil if int2 < 0
  #int2.times.reduce(1) {|acc, _| acc * int1 }..alternative method or...
  Array.new(int2, int1).reduce(1, :*)
end


p power(2, 3) == 8
p power(10, 0) == 1
p power(-5, 3) == -125
p power(-4, 2) == 16
p power(10, 0) == 1
p power(2, 3) == 8
p power(3, 2) == 9
p power(-5, 3) == -125
p power(-4, 2) == 16
p power(8, -2) == nil
