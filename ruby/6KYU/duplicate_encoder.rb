=begin
The goal of this exercise is to convert a string to a new string where each 
character in the new string is "(" if that character appears only once in the 
original string, or ")" if that character appears more than once in the 
original string. Ignore capitalization when determining if a character is a 
duplicate.

Examples
"din"      =>  "((("
"recede"   =>  "()()()"
"Success"  =>  ")())())"
"(( @"     =>  "))((" 

PROBLEM
input = string 
output = character string that...
- represents how many many times a chracter appears in the input string

rule =
- if a character ppears only once, the represent it with '('
- if a chracter appears more than once then represent it with ')'
- ignore capitalization

data structure = array
algorithm = 
given a string...
- downcase the string
- split the string into characters 
- iterate over the collection
 - for each chracter passed into the block...
 - if / else statement...
   - if the string count of the character  == 1
   - substitute the chracter in the string with '('
   - else substitute the character in the string with ')' 
return the string

=end

def duplicate_encode(string)
  str = string.downcase
  str.chars.each do |char|
    if str.count(char) == 1
      str.gsub!(char, '(')
    else
      str.gsub!(char, ')')
    end
  end
  str
end

p duplicate_encode("din") == "((("
p duplicate_encode("recede") == "()()()"
p duplicate_encode("Success") == ")())())"
p duplicate_encode("(( @") == "))(("