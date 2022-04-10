=begin
What is an anagram? Well, two words are anagrams of each other if they 
both contain the same letters. For example:

'abba' & 'baab' == true

'abba' & 'bbaa' == true

'abba' & 'abbba' == false

'abba' & 'abca' == false

Write a function that will find all the anagrams of a word from a list. 
You will be given two inputs a word and an array with words. 
You should return an array of all the anagrams or an empty array if there are 
none.

PROBLEM
input = word, array or words 
output = array of words that are...
- anagrams of the input word
  - all the words have the same letters

rule = 
- if there is no anagram of input word, return an empty array.

data structure = array 
algorithm = 
given a string and an array of strings...
- initialise an empty array
- iterate over the array
- for each word passed into the block...
  - split the string into characters
  - check if the collection has the same characters in the same 
  frequency as the input word
    - push the word into the empty array
- return the new array 
=end

def anagrams(string, array)
  anagram_arr = []
  array.each do |word|
    anagram_arr << word if word.chars.sort == string.chars.sort
  end
  anagram_arr
end

p anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada']) == ['aabb', 'bbaa']
p anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) == ['carer', 'racer']
p anagrams('laser', ['lazing', 'lazy',  'lacer']) == []
