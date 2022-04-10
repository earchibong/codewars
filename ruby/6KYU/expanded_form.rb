=begin
Write Number in Expanded Form
You will be given a number and you will need to return it as a string in 
Expanded Form. For example:

expanded_form(12); # Should return '10 + 2'
expanded_form(42); # Should return '40 + 2'
expanded_form(70304); # Should return '70000 + 300 + 4'
NOTE: All numbers will be whole numbers greater than 0.

If you liked this kata, check out part 2!!

problem
input = Integer
output = string that...
  - is an expanded form of the input integer 
    - ex: 12 => 10 + 2

rules =
- input integers are whole numbers greater than 0

data structure = Array
algorithm =
given an integer...
  - change to a string 
  - split the string into characters
  - reverse the collection
  - iterate over the collection with index
    - for each character passed into the block...
      - check if char == '0', if so return nil 
        - else return char + '0' * index
  - remove the nil values from the transformed collection
  - reverse the collection
  - join with a (" + ") delimiter

=end

def expanded_form(num)
  str = num.to_s.reverse.chars 
  arr = str.map.with_index do |digit, index|
    digit == '0' ? nil : digit + '0' * index
  end
  arr.compact.reverse.join(" + ")
end

p expanded_form(12) == '10 + 2'
p expanded_form(42) == '40 + 2'
p expanded_form(70304) == '70000 + 300 + 4'
