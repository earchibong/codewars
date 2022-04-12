=begin
Given a string of words, you need to find the highest scoring word.

Each letter of a word scores points according to its position in the alphabet: 
a = 1, b = 2, c = 3 etc.

You need to return the highest scoring word as a string.

If two words score the same, return the word that appears earliest in the 
original string.

All letters will be lowercase and all inputs wabideill be valid.

PROBLEM
input = String
output = string that...
- has chracters that score the highest points according to their position 
in the alphabet.

rule = 
- if 2 words score the same, return the word that appears earliest in the 
original string.
- all characters in input string are lowercase 

data structure = array 
algorithm = 
given a string...
- create a constant array with letter position.
- add 0 at the start of the array to account for the 0 index of the array..
so alphabet position starts at 1 instead of 0.
- downcase and split the input string into words
- iterate over the string with index 
- for each word passed into the block...
  - split the word into chracters 
  - iterate over the collection of characters
  - return the position of the character
- iterate over the nested array to determine the element with the largest sum
- iterate over the split input string again with index 
  -for each word passed into the block...
  - select the word that matches the highest element score
  - delete all nil elements in the output array
  - retrunthe first element of the array
=end

ALPHABET = %w(0 a b c d e f g h i j k l m n o p q r s t u v w x y z)

def high(string)
  str = string.downcase.split(' ')
  numbers = str.map.with_index do |word, index|
    word.chars.map { |char| ALPHABET.index(char) }
  end
  max_score = numbers.max_by { |sub_arr| sub_arr.reduce(&:+) }
  max_word = str.map.with_index do |word, index|
    word if word.chars.map { |char| ALPHABET.index(char) } == max_score
  end
  max_word.compact.first
end

p high('man i need a taxi up to ubud') == 'taxi'
p high('what time are we climbing up the volcano') == 'volcano'
p high('take me to semynak') == 'semynak'
p high('aaa b') == 'aaa'