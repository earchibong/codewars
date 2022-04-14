=begin
Sort the given strings in alphabetical order, case insensitive. For example:

["Hello", "there", "I'm", "fine"]  -->  ["fine", "Hello", "I'm", "there"]
["C", "d", "a", "B"])              -->  ["a", "B", "C", "d"]

PROBLEM
input  = array
output = array that ...
- is sorted in alphabetical order ignoring case.

rules =
- 

data structure = array
algorithm
given an array of string
- iterate over the collection
- for elements passed into the the block for comparion, downcase first and sort.
=end

def sortme(array)
   array.sort_by(&:downcase)
end
p sortme(["Hello", "there", "I'm", "fine"]) == ["fine", "Hello", "I'm", "there"]
p sortme(["C", "d", "a", "Ba", "be"]) == ["a", "Ba", "be", "C", "d"]
p sortme(["CodeWars"]) == ["CodeWars"]
