=begin
Complete the solution so that it splits the string into pairs of two characters.
If the string contains an odd number of characters then it should replace the 
missing second character of the final pair with an underscore ('_').

PROBLEM
input = string 
output = array that ...
 - includes the string split into pairs of two characters 

rule =
 - if input string is an odd size then, replace the missing second chracter 
 of the final pair with an underscore ('_')

 data structure = array 
 algorithm = 
 given a string ...
 - if string size is odd, add an underscore to the string
 - iterate through the string and match the pattern that captures a pair of 
 characters and return all ocurrences of the pattern.

=end

def solution(string)
  string.concat('_') if string.size.odd?
  pair = string.scan(/../)
  pair
end

p solution('abc') == ['ab', 'c_']
p solution('abcdef') == ['ab', 'cd', 'ef']
p solution("abcdef") == ["ab", "cd", "ef"]
p solution("abcdefg") == ["ab", "cd", "ef", "g_"]
p solution("") == []
