=begin
Complete the function that takes an array of words.

You must concatenate the nth letter from each word to construct a new word which 
should be returned as a string, where n is the position of the word in the list.

For example:

["yoda", "best", "has"]  -->  "yes"
  ^        ^        ^
  n=0     n=1     n=2
Note: Test cases contain valid input only - i.e. a string array or an empty 
array; and each word will have enough letters.

Problem
input = array
output = string that...
  - is corresponds to the index position of elemets in the input array
    - return the character from each element that shares the same index position
    as the element in the array
    e.g: in array ["yoda", "best", "has"]
    "yoda" is in array[0]
    "y" is in yoda[0]...so y is retured.

rules = 

data structure = array
algorithm =
given an array
  - initialise an empty string: new_string
  - iterate over that input array with index
  - for each string passed into the block...
    - push the index of the string into the empty string
  - return the new_string
    
=end
def nth_char(array)
  new_string = ''
  array.map.with_index do |string, index|
    new_string << string[index]
  end
  new_string
end

p nth_char(['yoda', 'best', 'has']) == 'yes'
p nth_char([]) == ''
p nth_char(['X-ray']) == 'X'