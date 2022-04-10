
=begin
Write a function that takes in a string of one or more words, and returns the 
same string, but with all words with five or more letters, reversed 
(Just like the name of this Kata). Strings passed in will consist of only 
letters and spaces. Spaces will be included only when more than one word is 
present.

Examples: spinWords( "Hey fellow warriors" ) => returns "Hey wollef sroirraw"

problem
input - string 
output - string that...
  - reverses the characters of words that have a length is 5 or more

  rules
  - input strings will have only letters and spaces 
  - spaces included only when more than on word in input string

  data structure: array
  algotrithm:
  given a string...
  - split the string into words
  - iterate over the collection
  - for each word passed into the block...
    - check for the length of the word
      - if length is 5 or more: reverse the chracters in the word
      - else return the word without change.
  - join the output array to form a string

=end

def spinWords(string)
  string.split.map do |word|
    word.size >= 5 ? word.reverse : word
  end.join(" ")
end

p spinWords("Hey fellow warriors") == "Hey wollef sroirraw"
p spinWords("This is a test") == "This is a test" 
p spinWords("This is another test") == "This is rehtona test"
p spinWords("'test") == "'tset"


