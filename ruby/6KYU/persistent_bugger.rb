=begin
Write a function, persistence, that takes in a positive parameter num and returns its multiplicative persistence, which is the number of times you must multiply the digits in num until you reach a single digit.

For example:
 persistence(39) # returns 3, because 3*9=27, 2*7=14, 1*4=4
                 # and 4 has only one digit

 persistence(999) # returns 4, because 9*9*9=729, 7*2*9=126,
                  # 1*2*6=12, and finally 1*2=2

 persistence(4) # returns 0, because 4 is already a one-digit number

 PROBLEM
input = integer that is positive 
output = integer that...

    - the number of times we keep multiplying the digits of an integer and the resulting output integer until the output is a single digit.
      - 39 = 3 * 9 = 27 , 2 * 7 = 14, 1 * 4 = 4....so outut integer = 3 because multiplication occured 3 times.

 rules 

 data structure = 
 algorithm = 
 given an integer ...
   - if input integer is less than 10, return 
   - increment the multiplcation count by 1 + recursion of ...
     - mutiplying until one digit output is achieved
       - change input integer to string 
       - split the string into characters
       - iterate over the collection and change the elements back into integers
       - multiply all the elements in the collection

=end

def persistence(num)
  return 0 if num < 10
  1 + persistence(num.to_s.chars.map(&:to_i).reduce(:*))
end

p persistence(39) #== 3
p persistence(4) #== 0
p persistence(25) #== 2
p persistence(999) #== 4

