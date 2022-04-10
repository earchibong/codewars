=begin
For a given nonempty string s find a minimum substring t and the maximum 
number k, 
such that the entire string s is equal to t repeated k times. 
The input string consists of lowercase latin letters. 
Your function should return a tuple (in Python) (t, k) 
or an array (in Ruby and JavaScript) [t, k]

Example #1:

for string s = "ababab"
the answer is ["ab", 3]

Example #2:
for string s = "abcde"
the answer is ['abcde', 1]
because for this string "abcde" the minimum substring t, such that s is 
t repeated k times, is itself.

Problem:
input = string 
output = array that is...
  - the smallest substring and the maximum number of times where ...
    - the input string == minimum substring repeated maximum number of times
     - 
rules / examples
 - return an array 
p f("ababab") == ["ab", 3]
p f("abcde") == ["abcde", 1]

 data structure = array 
 algorithm = 
 given a string 
  - find all substrings of string that begin with the first letter of 
  the input string
   - validate substrings:
      - select substrings that contain all unique chracters of input string
  - find number of occurences of the selected substring in the string and 
  count them
  - return selected substring and occurence count next to each other in an array.


=end

def substring(string)
  result = []
  0.upto(string.size - 1) do |index|
      subs = string[0..index]
      result << subs
  end
  result.select { |substr| substr.chars == string.chars.uniq }
end

def f(string)
  selected = substring(string).join
  max = string.scan(selected).count
  [selected, max]
end

p f("ababab") == ["ab", 3]
p f("abcde") == ["abcde", 1]
