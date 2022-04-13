=begin
If we list all the natural numbers below 10 that are multiples of 3 or 5, we 
get 3, 5, 6 and 9. The sum of these multiples is 23.

Finish the solution so that it returns the sum of all the multiples of 3 or 5 
below the number passed in.

Note: If the number is a multiple of both 3 and 5, only count it once.

PROBLEM
input = integer 
output = integer that...
- is the sum of all the multiples of 3 or 5 below the input integer passed in.

rule =
- if output is a multiple of both 3 and 5, only count it once.

data structure = Array
algorithm = 
given an integer...
  - select all multiples of 3 or multiples of 5 from the range of 1 - Integer
  - add up all the elements
=end

def solution(number)
  (1...number).select {|i| i % 3 == 0 || i % 5 == 0 }.reduce(:+)
end



p solution(10) == 23
p solution(20) == 78
p solution(200) == 9168
