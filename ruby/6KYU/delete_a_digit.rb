=begin
Given an integer n, find the maximal number you can obtain by deleting exactly 
one digit of the given number.

Example
For n = 152, the output should be 52;

For n = 1001, the output should be 101.

Input/Output
[input] integer n

Constraints: 10 ≤ n ≤ 1000000.

[output] an integer

PROBLEM
input = Integer
output  = integer that...
- is the maximum derived from deleting exactly one digit from the input integer.

Rule = 
- 10 <= input integer <= 1000000

data structure = array 
algorithm = 
given an integer ...
- change to a string
- use an if / else statement
 - if length of the string is odd...
    delete the first character and return the remainder and change back to integer
    - split string into chacters and delete first element
    - join characters and convert to integer
  - else delete the 2nd chracter and return the remainder and change it back to 
  integer
=end

def delete_digit(num)
  str = num.to_s
  chars = str.chars
  if str.size.odd?
    chars.delete_at(0)
    chars.join.to_i
  else
    chars.delete_at(1)
    chars.join.to_i
  end
end


p delete_digit(152) == 52
p delete_digit(1001) == 101
p delete_digit(10) == 1

