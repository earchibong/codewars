=begin
Count the number of Duplicates
Write a function that will return the count of distinct case-insensitive 
alphabetic characters and numeric digits that occur more than once in the input
string. The input string can be assumed to contain only alphabets 
(both uppercase and lowercase) and numeric digits.

Example
"abcde" -> 0 # no characters repeats more than once
"aabbcde" -> 2 # 'a' and 'b'
"aabBcde" -> 2 # 'a' occurs twice and 'b' twice (`b` and `B`)
"indivisibility" -> 1 # 'i' occurs six times
"Indivisibilities" -> 2 # 'i' occurs seven times and 's' occurs twice
"aA11" -> 2 # 'a' and '1'
"ABBA" -> 2 # 'A' and 'B' each occur twice

PROBLEM
input = string 
output = integer that...
- represents the number of characters in the string that are duplicated.

rule = 
- case insensitive output
- input string contains only alphabets and numeric digits

data structure = hash 
algorithm = 
- initilize a new hash and popuate with 0
- downcase and split the string into characters
- iterate over the collection
- for each chracter passed into the block...
  - update the hash count ...hash[char]+= 1
- check the hash values...
  - return 0, if all values are less than or equal to 1
  - if hash values greater than 1 are present...
  - count them and return the count number
=end

def duplicate_count(string)
  str = string.downcase.chars
  hash_count = Hash.new(0)
  hash_key = 0
  str.each { |char| hash_count[char] += 1 }
  return 0 if hash_count.all? { |_,v| v <= 1 }
  hash_count.each { |_,v| hash_key += 1 if v > 1 }
  hash_key
end

#alternative solution
def duplicate_count(string)
  ('a'..'z').count { |char| string.downcase.count(char) > 1 }
end

#another solution
def duplicate_count(string)
  arr = string.downcase.split("")
  arr.uniq.count { |char| arr.count(char) > 1 }
end


p duplicate_count("") == 0
p duplicate_count("abcde") == 0
p duplicate_count("abcdeaa") == 1
p duplicate_count("abcdeaB") == 2
p duplicate_count("Indivisibilities") == 2
