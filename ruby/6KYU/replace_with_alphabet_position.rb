=begin
In this kata you are required to, given a string, replace every letter with 
its position in the alphabet.

If anything in the text isn't a letter, ignore it and don't return it.

"a" = 1, "b" = 2, etc.

Example
alphabet_position("The sunset sets at twelve o' clock.")
Should return "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5
15 3 12 15 3 11" (as a string)

PROBLEM
input = string 
output = string that...
- replaces every letter in the input string with its position in the alphabet

rule = 
- ignore and don't return  anything that is not a letter

Data structure = Hash
algorithm = 
- crete a hash with letters and their positions as the key - value pair
- downcase the input string 
- delete everyting that is not a letter 
- split the output string into characters
- iterate over the collection
- for each letter passed into the block, return hash value of the letter
- join with a space
=end

ALPHABET = ('a'..'z').zip(1..26).to_h

def alphabet_position(string)
  string.downcase.delete('^A-za-z').chars.map do |char|
    ALPHABET[char]
  end.join(' ')
end

p alphabet_position("The sunset sets at twelve o' clock.")== "20 8 5 19 21 14 
19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11"
p alphabet_position("-.-'") == ""
