=begin
You've just discovered a square (NxN) field and you notice a warning sign. 
The sign states that there's a single bomb in the 2D grid-like field in front 
of you.

Write a function mineLocation/MineLocation that accepts a 2D array, and returns 
the location of the mine. The mine is represented as the integer 1 in the 2D 
array. Areas in the 2D array that are not the mine will be represented as 0s.
The location returned should be an array (Tuple<int, int> in C#) where the first
element is the row index, and the second element is the column index of the bomb
location (both should be 0 based). All 2D arrays passed into your function will 
be square (NxN), and there will only be one mine in the array.

PROBLEM
input = nested array 
output  = array that...
  - shows the location in the nested array, of the integer 1.
 

rule = 
  - the output array should have a size of 2
    - the first element == row index == index position of sub-array that
    contains the integer 1
    - the last element == column index == index position of the integer 1 in
    the sub-array
  - all nested arrays passed into the method will be NxN.
  - there will only be one mine in the field...there is only one 1 in the array.

data structure = array 
algorithm = 
given a nested array ...
- initliase an empty array
- iterate over the input array with index 
- for each sub_array passed into the block...
  - iterate over the sub_array with index
  -for each integer passed into the inner block...
  - check if the integer == 1
    - if it is, push the index of sub_array and integer 1 into the empty array
- return the new array

=end

def mineLocation(array)
  result = []
  array.each_with_index do |sub_array, main_index|
    sub_array.each_with_index do |int, sub_array_index|
      result << main_index << sub_array_index if int == 1
    end
  end
  result
end

p mineLocation( [ [1, 0, 0], [0, 0, 0], [0, 0, 0] ] ) == [0, 0]
p mineLocation( [ [0, 0, 0], [0, 1, 0], [0, 0, 0] ] ) == [1, 1]
p mineLocation( [ [0, 0, 0], [0, 0, 0], [0, 1, 0] ] ) == [2, 1]
p mineLocation([ [1, 0], [0, 0] ]) == [0, 0]
p mineLocation([ [1, 0, 0], [0, 0, 0], [0, 0, 0] ]) == [0, 0]
p mineLocation([ [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 1, 0], [0, 0, 0, 0] ]) 
== [2, 2]

