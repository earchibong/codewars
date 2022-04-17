=begin
The alphabetized kata
Re-order the characters of a string, so that they are concatenated into a new 
string in "case-insensitively-alphabetical-order-of-appearance" order. 
Whitespace and punctuation shall simply be removed!

The input is restricted to contain no numerals and only words containing 
the english alphabet letters.

Example:

alphabetized("The Holy Bible") # "BbeehHilloTy"

PROBLEM
input = String 
output = string that...
- is sorted in alphabetical order without case taken into consideration.

rule = 
- remove whitespaces and punctuations
- input string only contains englush letters and no numerals

data structure = array 
algorithm = 
given a string...
- delete whitespaces and all non-alphabetical characters
- split  string into characters
- iterate over the string, downase and sort 
- join output collection to form new string
=end

def alphabetized(string)
  str = string.delete('^A-Za-z').chars
  str.sort_by(&:downcase).join
end

p alphabetized("The Holy Bible") == "BbeehHilloTy"
p alphabetized("") == ""
p alphabetized(" ") == ""
p alphabetized(" a") == "a"
p alphabetized("a ") == "a"
p alphabetized(" a ") == "a"
p alphabetized("A b B a") == "AabB"
p alphabetized(" a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E 
F G H I J K L M N O P Q R S T U V W X Y Z") == "aAbBcCdDeEfFgGhHiIjJkKlLmMnNo
OpPqQrRsStTuUvVwWxXyYzZ"
