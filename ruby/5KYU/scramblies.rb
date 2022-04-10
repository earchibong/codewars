=begin
Complete the function scramble(str1, str2) that returns true if a portion of 
str1 characters can be rearranged to match str2, otherwise returns false.

Notes:

Only lower case letters will be used (a-z). No punctuation or digits will be 
included.
Performance needs to be considered
Input strings s1 and s2 are null terminated.

PROBLEM
input = 2 strings... str1 and str2
output = boolean that...
  - returns true if a portion of str1 can be rearranged to match str2

  rule = 
  - only lowercase letters are used
  - no punctuation or digits are included
  - performance needs to be considered 
  - input strings are null terminated 
 example=
  - scramble('rkqodlw', 'world') == true
  - p scramble('cedewaraaossoqqyt', 'codewars') == true

data structure = array 
algorithm = 
given 2 input strings...str1, str2
 - if the count of all characters in str2 is greater than the count of
 the same in str1 then..it is impossible for a portion of str1 to be 
 re-aranged to match str2..because the string count has to be the same.

 - downcase str2
 - delete all non-aplhabetic chracters
 - split str2 into characters
 - iterate over str2
   for ALL chracters passed into the block
    - check if the str2 count of that chracter > str1 count of the same chracter
      - if it is, return false 
      - else return true
 
=end

def scramble(str1, str2)
  str2_chars = str2.downcase.delete('^a-z').chars 
  str1_chars = str1.downcase.delete('^a-z').chars 
  str2_chars.all? do |char|
    str2_chars.count(char) > str1_chars.count(char)? false : true
  end
end

p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('rkqodlw','world') == true
p scramble('cedewaraaossoqqyt','codewars') == true
p scramble('katas','steak') == false
p scramble('scriptjava','javascript') == true
