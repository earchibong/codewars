=begin
Write a method that takes a string as an argument and groups the number of times
each character appears in the string as a hash sorted by the highest number of 
occurrences.

The characters should be sorted alphabetically e.g:

get_char_count("cba") => {1=>["a", "b", "c"]}
You should ignore spaces, special characters and count uppercase letters as 
lowercase ones.

PROBLEM:
input = String
output = hash that...
 - counts and groups the number of occurences of each character in the input 
 string.

 rule:
 - uppercase is counted as lowercase 
 - ignore special characters 
 - ignore spaces
 - sort characters alphabetically

 data structure = Hash
 algorithm = 
 given a string...
  - downcase the string
  - delete all non-alphabetic characters
  - split string into characters 
  - sort the collection
  - iterate over the collection using group_by and the grouping condition would 
  be the count of each character
  - iterate over the hash and remove duplicate values 
=end

def get_char_count(string)
  str = string.downcase.delete('^0-9A-Za-z').chars.sort
  hash = str.group_by { |char| str.count(char) }
  hash.map { |_,v| v.uniq! }
  hash
end

p get_char_count("Mississippi") == {4=>["i", "s"], 2=>["p"], 1=>["m"]}
p get_char_count("Hello. Hello? HELLO!!") == {6=>["l"], 3=>["e", "h", "o"]}
p get_char_count("aaa...bb...c!") == {3=>["a"], 2=>["b"], 1=>["c"]}
p get_char_count("aaabbbccc") == {3=>["a", "b", "c"]}
p get_char_count("abc123") == {1=>["1", "2", "3", "a", "b", "c"]}

