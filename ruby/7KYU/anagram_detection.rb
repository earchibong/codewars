=begin
An anagram is the result of rearranging the letters of a word to produce a 
new word (see wikipedia).

Note: anagrams are case insensitive

Complete the function to return true if the two arguments given are anagrams of 
each other; return false otherwise.

Examples
"foefet" is an anagram of "toffee"

"Buckethead" is an anagram of "DeathCubeK"

PROBLEM
input = 2 strings
output = boolean that...
- is true if the input strings are anagrams of each other or false otherwise.

rule =
- anagrams are case insensitive 

data structure = array.
algorithm = 
given 2 strings...
- downcase, split into characters, sort and join each string.
- check if string1 == string2, return true else return false.
=end

def is_anagram(str1, str2)
  s1 = str1.downcase.chars.sort.join
  s2 = str2.downcase.chars.sort.join
  s1 == s2
end

p is_anagram('Creative', 'Reactive') == true
p is_anagram("foefet", "toffee") == true
p is_anagram("Buckethead", "DeathCubeK") == true
p is_anagram("Twoo", "WooT") == true
p is_anagram("dumble", "bumble") == false
p is_anagram("ound", "round") == false
p is_anagram("apple", "pale") == false
