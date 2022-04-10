=begin
Write a function that, given a string of text 
(possibly with punctuation and line-breaks), returns an array of the top-3 most 
occurring words, in descending order of the 
number of occurrences.

Assumptions:
A word is a string of letters (A to Z) optionally containing one or more 
apostrophes (') in ASCII. (No need to handle fancy punctuation.)
Matches should be case-insensitive, and the words in the result should be 
lowercased.
Ties may be broken arbitrarily.
If a text contains fewer than three unique words, then either the top-2 or 
top-1 words should be returned, or an empty array if a text contains no words.

Problem:
input: string
output : array that...
- represents the top 3 most occuring words in descending order of the number of 
occurences in the  input string
  - top 3 most occuring words in the input string
  - sorted in descending order

  rules /examples
  - case insensitive Matches
  - word = string of letters optionally containing one or more apostrophes
  - if input strings has less than 3 unique words return the top 1 or two words
  - if input string is empty, return empty array

  data structure: hash and array
  algorithm:
Given a string 
 - initialize a new hash populated with zero value
 - downcase the input string
 - substitue all non alphabetic characters with a white space
 - split string
 - iterate over the collection
    - for each character passed into the block...
      update the hash count
- return the hash
- select the 3 largest values from the hash by value size
- change the result to a hash
- return the hash keys
=end

def top_3_words(string)
  hash_count = Hash.new(0)
  str = string.downcase.gsub(/[^A-Za-z]/, ' ').split
  str.each { |char| hash_count[char] += 1 }
  hash_count.max_by(3) { |k,v| v }.to_h.keys
end


p top_3_words("a a a  b  c c  d d d d  e e e e e") #== ["e", "d", "a"]
p top_3_words("e e e e DDD ddd DdD: 'ddd' 'ddd' aa aA Aa, bb cc cC e e e")
#== ["e", "ddd", "aa"]
p top_3_words("  // wont won't won't ") #== ["won't", "wont"]
p top_3_words("  , e   .. ") #== ["e"]
p top_3_words("  ...  ") #== []
p top_3_words("  '  ") #== []
p top_3_words("  '''  ") #== []
p top_3_words("In a village of La Mancha, the name of which I have no desire to 
call to mind,there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for coursing. 
An olla of rather more beef than mutton, a salad on most nights, scraps on 
Saturdays, lentils on Fridays, and a pigeon or so extra on Sundays, made away 
with three-quarters of his income.") #== ["a", "of", "on"]


