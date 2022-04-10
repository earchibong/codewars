=begin
You live in the city of Cartesia where all roads are laid out in a perfect grid. 
You arrived ten minutes too early to an appointment, so you decided to take the 
opportunity to go for a short walk. The city provides its citizens with a 
Walk Generating App on their phones -- everytime you press the button it sends 
you an array of one-letter strings representing directions to walk 
(eg. ['n', 's', 'w', 'e']). 

You always walk only a single block in a direction 
and you know it takes you one minute to traverse one city block, so create a 
function that will return true if the walk the app gives you will take you 
exactly ten minutes (you don't want to be early or late!) and will, of course, 
return you to your starting point. Return false otherwise.

Note: you will always receive a valid array containing a random assortment of 
direction letters ('n', 's', 'e', or 'w' only). It will never give you an empty 
array (that's not a walk, that's standing still!).

problem
input = array 
output = boolean that
  - returns true if the elements in the input array sum up to 10 or false 
  otherwise


  rules =
- input array is never empty
- each element in the array represents 1 miniute walk in a direction
   - array size should be equal to 10 to meet one condition
- sum of each uniq elements in the array shold be equal


data structure = array 
algorithm
given an array of strings
  - initialise a new hash with zero count 
   - iterate over the input array 
    - update the count each element in the array
    - return the count hash values
- check for the following 2 conditions:
  - check if all elements in the returned values array are the same
    - get the uniq values of the Array
    - check if the the size of that is less than or equal to 1
  - check if the size of the input array is 10
=end

def is_valid_walk(array)
  hash_count = Hash.new(0)
  array.each { |ele|hash_count[ele] += 1 }
  arr = hash_count.values
  arr.uniq.size <=1 && array.size == 10 ? true : false
  
end

p is_valid_walk(['n','s','n','s','n','s','n','s','n','s']) == true
p is_valid_walk(['w','e','w','e','w','e','w','e','w','e','w','e']) == false
p is_valid_walk(['w']) == false
p is_valid_walk(['n','n','n','s','n','s','n','s','n','s']) == false