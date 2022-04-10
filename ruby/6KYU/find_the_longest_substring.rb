=begin
Find the longest substring in alphabetical order.

Example: the longest alphabetical substring in "asdfaaaabbbbcttavvfffffdf" 
is "aaaabbbbctt".

There are tests with strings up to 10 000 characters long so your code will 
need to be efficient.

The input will only consist of lowercase characters and will be at least 
one letter long.

If there are multiple solutions, return the one that appears first.

PROBLEM
input = string 
output = string that...
- is the longest substring sorted alphabetically.

rules =
- input string has only lowercase characters 
- input string size <= 1
- if multiple solutions, return the one that appears first.

examples = 
- longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
- longest('z') == 'z'

data structure = array 
algorithm = 
given a string ...
- find all the substrings of the input string
  - select only substrings that are in alphabetical order...
- select from the returned substrings, the longest by size...
  - if more than one substring is returned, select the first one that appears
=end

def longest(string)
  str = string.downcase
  result = []
  0.upto(str.size - 1) do |index|
   index.upto(str.size - 1) do |index2|
    substring = str[index..index2]
    result << substring if substring.chars == substring.chars.sort
   end 
  end
  result.max_by {|substring| substring.size}
end 

p longest('asd') == 'as'
p longest('nab') == 'ab'
p longest('abcdeapbcdef') == 'abcde'
p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
p longest('asdfbyfgiklag') =='fgikl'
p longest('z') == 'z'
p longest('zyba') == 'z'
