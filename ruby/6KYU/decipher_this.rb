=begin
You are given a secret message you need to decipher. Here are the things you 
need to know to decipher it:

For each word:

the second and the last letter is switched (e.g. Hello becomes Holle)
the first letter is replaced by its character code (e.g. H becomes 72)
Note: there are no special charact,eers used, only letters and spaces

Examples

decipherThis('72olle 103doo 100ya'); // 'Hello good day'
decipherThis('82yade 115te 103o'); // 'Ready set go'

PROBLEM
input = String
output = string that ...
- has the second and last letter of the input string switched for each word
- and the first letter of the input string is replaced with its chracter code

rule = 
- no special characters - only letters and spaces for input String

examples = 
decipherThis('72olle 103doo 100ya'); // 'Hello good day'
decipherThis('82yade 115te 103o'); // 'Ready set go'

data structure = array 
algorithm = 
given a string...
- split the string into words and nums
  - using regex /(\d+)(\S*)/
- iterate over the nested collection
- for each word and number passed into the block...
  - build a new string
  - if word length is greater than 1...
  - num_converted + last_letter + middle_chars + first_letter
    - convert the number into an integer
    - return the chracter that the number represents ..integer.chr
    - return the last chracter
    - return the characters[1..-2]
    - return the first character
    - join the collection to create an array of words
  - else if word length is one
  - num_converted + last_letter
  - join collection to create word array
- join the array with a space delimeter to create a string
=end

def decipher_this(string)
  nums_and_words = string.scan(/(\d+)(\S*)/)
  nums_and_words.map do |num, word|
    if word.size > 1
      [num.to_i.chr, word[-1], word[1..-2], word[0]].join
    else
      [num.to_i.chr, word[-1]].join
    end
  end.join(' ')
end


p decipher_this("65 119esi 111dl 111lw 108dvei 105n 97n 111ka") == "A wise old 
owl lived in an oak"
p decipher_this("84eh 109ero 104e 115wa 116eh 108sse 104e 115eokp") == "The more
he saw the less he spoke"
p decipher_this("84eh 108sse 104e 115eokp 116eh 109ero 104e 104dare") == "The 
less he spoke the more he heard"