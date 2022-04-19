=begin
Write a function to WeirdCase (weirdcase in Ruby) that accepts a string, and 
returns the same string with all even indexed characters in each word upper 
cased, and all odd indexed characters in each word lower cased. The indexing 
just explained is zero based, so the zero-ith index is even, therefore that 
character should be upper cased.

The passed in string will only consist of alphabetical characters and 
spaces(' '). Spaces will only be present if there are multiple words. 
Words will be separated by a single space(' ').

PROBLEM
input = string 
output = string that ...
- has all even indexed characters upcased and all odd indexed characters 
in each word..downcased.

rule = 
- input string only has alphabetical chracters and spaces
- spaces onlinty present if tere are multiple words in the string 
- words separated by only single space 

data structure = array 
algorithm = 
given a string...
- split the string into word 
- iterate over the collection and for each word passed into the block..
  - split the word into chracters and iterate over the collection with index 
  - for each character passed into the block...
    - if index is even, upcase the character 
    - else downcase the character
  - join the collection to create new word 
- join array of words to create new string.
=end

def weirdcase(string)
  string.split.map do |word|
    word.chars.map.with_index do |char, idx|
      idx % 2 == 0 ? char.upcase : char.downcase
    end.join 
  end.join(' ')
end

p weirdcase( "String" ) == "StRiNg"
p weirdcase( "Weird string case" ) == "WeIrD StRiNg CaSe"
