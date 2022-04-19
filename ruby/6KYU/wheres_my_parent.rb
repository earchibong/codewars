=begin
Mothers arranged a dance party for the children in school. At that party, 
there are only mothers and their children. All are having great fun on the 
dance floor when suddenly all the lights went out. It's a dark night and no 
one can see each other. But you were flying nearby and you can see in the dark 
and have ability to teleport people anywhere you want.

Legend:
-Uppercase letters stands for mothers, lowercase stand for their children, i.e. 
"A" mother's children are "aaaa".
-Function input: String contains only letters, uppercase letters are unique.
Task:
Place all people in alphabetical order where Mothers are followed by their 
children, i.e. "aAbaBb" => "AaaBbb".

PROBLEM
input = string 
output = string that...
- is the input string sorted with case taken into consideration.
- all uppercase characters must be follweed by lowercase version of the chracters

rule =
- input string contains only letters
- uppercase letters are unique

data structure = array 
algorithm
given a string...
- split the string into chracters 
- iterate over the collection
- for each chracter passed into the block...
- ouput the the character and its downcased version
- join
=end

def find_children(string)
  string.chars.sort_by { |char| [char.downcase, char] }.join
end

p find_children("abBA") == "AaBb"
p find_children("AaaaaZazzz") == "AaaaaaZzzz"
p find_children("CbcBcbaA") == "AaBbbCcc"
p find_children("xXfuUuuF") == "FfUuuuXx"
p find_children("") == ""
