=begin
Background
There is a message that is circulating via public media that claims a reader can easily read a message where the inner letters of each words is scrambled, as long as the first and last letters remain the same and the word contains all the letters. 

Another example shows that it is quite difficult to read the text where all the letters are reversed rather than scrambled.

In this kata we will make a generator that generates text in a similar pattern, but instead of scrambled or reversed, ours will be sorted alphabetically

Requirement
return a string where:

1) the first and last characters remain in original place for each word
2) characters between the first and last characters must be sorted alphabetically
3) punctuation should remain at the same place as it started, for example: shan't -> sahn't

Assumptions

1) words are separated by single spaces
2) only spaces separate words, special characters do not, for example: tik-tak -> tai-ktk
3) special characters do not take the position of the non special characters, for example: -dcba -> -dbca
4) for this kata punctuation is limited to 4 characters: hyphen(-), apostrophe('), comma(,) and period(.)
5) ignore capitalisation

for reference: http://en.wikipedia.org/wiki/Typoglycemia

Problem:
input = string 
output = string that...
  - has the first, last characters and punctuation in the same position as the input string 
  - chracters between first and last postion are sorted alphabetically 

  rules / example = 
  - only single spaces separate words 
  - characters and punctuation do not separate words
  - special characters stay in their origianl position
  - ignore capitalisation
  - only 4 special characters: (-), (!), (,) , (.)
  - if input string size < 4, return input string

  data structure = 
  algorithm = 
  given a string...
  - split the string into words
  - iterate over the collection
  - for each word passed into the block...
    - split the string into characters
      - use range: [1...-2] and sort 
      - next if index of charater is a special one: (-), (!), (,) , (.)
      - join the characters to form a string
    - concatenate first + sorted string + last character
    - return the transformed word
=end

def scramble_words(string)
  return string if string.size < 4
  new_array = []
  str = string.split
  str.each.with_index do |word, idx|
    arr = word.chars
    arr[idx] =~ [/^A-Za-z/] ? next : sorted = arr[1..-2].sort.join
    new_array << arr[0] << sorted << arr[-1]
  end
  new_array.join
end


p scramble_words('professionals') == 'paefilnoorsss'
p scramble_words('i') == 'i'
p scramble_words('') == ''
p scramble_words('me') == 'me'
p scramble_words('you') == 'you'
p scramble_words('card-carrying') #== 'caac-dinrrryg'
p scramble_words("shan't")# == "sahn't"
p scramble_words('-dcba') == '-bcda'
p scramble_words('dcba.') == 'dabc.'
p scramble_words("you've gotta dance like there's nobody watching, love like 
you'll never be hurt, sing like there's nobody listening, and live like it's 
heaven on earth.") #== "you've gotta dacne like teehr's nbdooy wachintg, love 
like ylo'ul neevr be hrut, sing like teehr's nbdooy leiinnstg, and live like 
it's haeevn on earth."

