=begin
Given a string, return a new string that has transformed based on the input:

Change case of every character, ie. lower case to upper case, upper case to 
lower case.
Reverse the order of words from the input.
Note: You will have to handle multiple spaces, and leading/trailing spaces.

For example:

"Example Input" ==> "iNPUT eXAMPLE"
You may assume the input only contain English alphabet and spaces.

PROBLEM
input = string 
output = string that...
- is transformed based on the input string 

rule =
- change case of every characters
- reverse the string
- handle multiple spaces, leading / trailing spaces
- assume input string contains only English aphabet and spaces

data structure = array.
algorithm =
givin a string...
- split the string into words
- reverse the collection
- initialise an empty Array
- iterate over the reversed collection 
- for each word passed into the block...
 - break the word into chracters and iterate over the collection
 - if character is upcased, downcase it and push into empty array 
 - if chracters is downcased, upcase it and puh into empty array.
- return the new array and join to form am array of new words
- join the array with a space delimiter to form a new string
=end

def transform(string)
  str = string.split.reverse
  new_string = []
  str.each do |word|
    word.chars.each do |char|
      new_string << char.upcase if char == char.downcase
      new_string << char.downcase if char == char.upcase
    end
    new_string.join
  end.join(' ')
end

p transform('Example Input') == "iNPUT eXAMPLE"