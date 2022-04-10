=begin
Given two words, how many letters do you have to remove from them 
to make them anagrams?
  Example
  First word : c od e w ar s (4 letters removed)
  Second word : ha c k er r a nk (6 letters removed)
  Result : 10
  A word is an anagram of another word if they have the same letters 
  (usually in a different order).
  Do not worry about case. All inputs will be lowercase.

  PROBLEM
input = 2 strings, str1, str2
output = integer that...
- is the sum of chracters removed from both strings to make them anagrams

rule = 
- all inputs are lowercase

data structure = array 
algortithm =
given 2 strings
  - find the common chracters that appear with the same frequency in both strings
    - initialise a new array with both strings
    - split both strings in the new array into characters
    - iterate over the nested array and find the intersection of both...i.e: 
    select the chracters that are common for both strings
    - iterate over new collection and return the chracters that have the same 
    number of occurences in both strings
  - subtract the length of the common frequency collection from string 1 length
  - substract the length of the common frequency collection from string 2 length
  - add both numbers together to get the anagram difference.


=end

def anagram_difference(str1, str2)
  array = [str1, str2]
  characters = array.map(&:chars)
  common_chars = characters.reduce(&:&)
  common_freq = common_chars.map do |char|
    array.map { |string| string.scan(char) }.min
  end.flatten
  num1 = str1.size - common_freq.size
  num2 = str2.size - common_freq.size
  num1 + num2
end

  
  p anagram_difference('', '') == 0
  p anagram_difference('a', '') == 1
  p anagram_difference('', 'a') == 1
  p anagram_difference('ab', 'a') == 1
  p anagram_difference('ab', 'ba') == 0
  p anagram_difference('ab', 'cd') == 4
  p anagram_difference('aab', 'a') == 2
  p anagram_difference('a', 'aab') == 2
  p anagram_difference('codewars', 'hackerrank') == 10

    