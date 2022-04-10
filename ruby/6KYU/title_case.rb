=begin
A string is considered to be in title case if each word in the string is either 
(a) capitalised (that is, only the first letter of the word is in upper case) 
or (b) considered to be an exception and put entirely into lower case unless 
it is the first word, which is always capitalised.

Write a function that will convert a string into title case, given an optional 
list of exceptions (minor words). The list of minor words will be given as a 
string with each word separated by a space. Your function should ignore the 
case of the minor words string -- it should behave in the same way even if the 
case of the minor word string is changed.

PROBLEM
input = 2 strings ... input string , minor words
output = string that...
  - is the input string coverted into title case:
    - first letter of each word in input string capitalised IF matching minor 
    string is downcased
    or...
    -  if the minor word is capitalised, matching words of the input string are 
    downcased and the rest of the input string is capitalised

  rule =
  - ignore the case of the minor words string

  data structure = array 
  algorithm = 
  given 2 strings: main and minor...
    - capitalize and split the main string
      - iterate over the collection
      - for each string passed into the block...
       - downcase and split the minor string 
       - check if that string inludes the word passed into the block
          - if it does, return the word
          - if it doesn't, capitalize and return the word
   - join the array and return the transformed string.

=end

def title_case(main, minor = '')
    capitalized = main.capitalize.split
    capitalized.map do |word|
    minor.downcase.split.include?(word) ? word : word.capitalize
    end.join(' ')
end

p title_case('a clash of KINGS', 'a an the of') == 'A Clash of Kings'
p title_case('THE WIND IN THE WILLOWS', 'The In') == 'The Wind in the Willows'
p title_case('the quick brown fox') == 'The Quick Brown Fox'
