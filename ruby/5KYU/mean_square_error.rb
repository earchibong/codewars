=begin
create a function that accepts two integer arrays of equal length
compares the value each member in one array to the corresponding member in 
the other
squares the absolute value difference between those two values
and returns the average of those squared absolute value difference between 
each member pair.
Examples
[1, 2, 3], [4, 5, 6]              -->   9   because (9 + 9 + 9) / 3
[10, 20, 10, 2], [10, 25, 5, -2]  -->  16.5 because (0 + 25 + 25 + 16) / 4
[-1, 0], [0, -1]                  -->   1   because (1 + 1) / 2

PROBLEM
input = 2 integer arrays 
output = integer that...
- is the average of the squared absolute value difference between each 
member pair of the input arrays 
 - [1, 2, 3], [4, 5, 6]              -->   9   because (9 + 9 + 9) / 3
  - (4 - 1)** 2 + (5 - 2) **2 + (6-3)** 2 / 3 == 9

  Data structure = array 
  algorithm = 
  given 2 integer arrays...
  - initialze an empty array
  - iterate over the first array with index
  - for each integer passed into the block...
   - subtract it from the index of array 2
   - square the result
   - push the result into the empty array 
  - add up all the elements of the new array 
    - initialise variable 'sum' to integer 0
    - iterate over the new array 
     - for each integer passed into the block...
     - update sum by adding the current value of sum to the integer 
     - return sum 
  - divide the final sum by the size of the array 

=end

def solution(ar1, ar2)
  result = []
  sum = 0
  ar1.each_with_index {|int, index| result << (ar2[index] - int) ** 2}
  result.each { |int| sum += int }
  sum.to_f / result.size
end

p solution([1, 2, 3], [4, 5, 6]) == 9
p solution([10, 20, 10, 2], [10, 25, 5, -2]) == 16.5
p solution([-1, 0], [0, -1]) == 1
