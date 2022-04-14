=begin
Complete the greatest_pProduct method so that it'll find the greatest product 
of five consecutive digits in the given string of digits.

For example:

greatestProduct("123834539327238239583") // should return 3240
The input string always has more than five digits.

PROBLEM
input  = string 
output = integer that...
- is the greatest product of five consecutive digits in the input string of 
digits.

rule = 
- input string will always have more than 5 digits

Data structure = array 
algothrim = 
given a string...
- split the string into an arrays of 5 characters that follow each other
- change the elements in the array to integers
- find the sub_array that has the greatest product value
- get the product value of that sub_array and return it.
=end

def greatest_product(string)
  str = string.chars
  consecutive_nums = str.each_cons(5).to_a
  integers = consecutive_nums.map { |sub_arr| sub_arr.map(&:to_i) }
  max = integers.max_by { |sub_arr1| sub_arr1.reduce(&:*) }
  max.reduce(&:*)
end

p greatest_product("395831238345393272382") == 3240
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("02494037820244202221011110532909999") == 0

