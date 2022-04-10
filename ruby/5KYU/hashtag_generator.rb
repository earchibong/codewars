=begin
The marketing team is spending way too much time typing in hashtags.
Let's help them with our own Hashtag Generator!
Here's the deal:

It must start with a hashtag (#).
All words must have their first letter capitalized.
If the final result is longer than 140 chars it must return false.
If the input or the result is an empty string it must return false.
Examples
" Hello there thanks for trying my Kata"  =>  "#HelloThereThanksForTryingMyKata"
"    Hello     World   "                  =>  "#HelloWorld"
""                                        =>  false

PROBLEM
input = string
output = string that ...
- begins with a hashtag 
- has the first letter of each word capitalized 
- is less than 140 characters

rule = 
- if final result is > 140 chracters, return false
- if input string OR output string is empty,return false 

data structure = array 
algorithm = 
given a string 
- initialize an empty string
- return false if string is empty 
- split the string into words
- iterate over the string
  - for each word passed into the block...
  - capitalize and push it into the empty string 
- return false if ...
  - if the new string has more than 139 characters 
  - new string is empty
- else return the new string and prepend a hashtag to it.
=end

def generateHashtag(string)
  new_string = ''
  return false if string.empty?
  str = string.split
  str.each { |word| new_string << word.capitalize }
  if new_string.empty? || new_string.chars.size > 139 # less hashtag
    false
  else
    new_string.prepend('#')
  end
end

  

p generateHashtag("") == false
p generateHashtag(" " * 200) == false
p generateHashtag("Do We have A Hashtag") == "#DoWeHaveAHashtag"
p generateHashtag("Codewars") == "#Codewars"
p generateHashtag("Codewars Is Nice") ==  "#CodewarsIsNice"
p generateHashtag("Codewars is nice") == "#CodewarsIsNice"
p generateHashtag("code" + " " * 140 + "wars") == "#CodeWars"
p generateHashtag("Loooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
ooooooooooooooong Cat") == false
p generateHashtag("a" * 139) == "#A" + "a" * 138
p generateHashtag("a" * 140) == false
