=begin
A pangram is a sentence that contains every single letter of the alphabet at 
least once. For example, the sentence "The quick brown fox jumps over the 
lazy dog" is a pangram, because it uses the letters A-Z at least once 
(case is irrelevant).

Given a string, detect whether or not it is a pangram. Return True if it is, 
False if not. Ignore numbers and punctuation.

problem
input = string
output = boolean that
- detects if the input string contains every single letter of the alphabet at 
least once.
 - returns true if so and false if not.

 rule:
 - letter case is irrelevant
 - ignore numbers and punctation

 data structure = array
 algorithm = 
 given a string 
  - initialise a constant with an array of alphabet characters
  - iterate over the constant and check if all of the characters are included 
  in the input string
=end

ALPHA = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)

def panagram?(string)
  ALPHA.all? { |char| string.downcase.include?(char) }
end
p panagram?("The quick brown fox jumps over the lazy dog.") == true
p panagram?("This is not a pangram.") == false
