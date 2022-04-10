=begin
Modify the kebabize function so that it converts a camel case string into a 
kebab case.

kebabize('camelsHaveThreeHumps') // camels-have-three-humps
kebabize('camelsHave3Humps') // camels-have-humps
Notes:

the returned string should only contain lowercase letters

problem
input = String
output = string that...
- adds a hyphen before every instaces of upcase characters in the input string
- downcase all instances of upcase characters in the input string 

rules
- output string should only have lowercase characters

data structure = array 
algorithm =
given an input string
- initialise an empty array
- split input string into characters 
- iterate over the collection
- push characters into empty array
- if chracter is uppercase
  - prepend a hypen
  - downcase the chracter
  - push into new array
- join new array, delete numbers and return output string
=end

def kebabize(string)
  new_string = []
  str = string.chars
  str.each do |char|
    char =~ /[A-Z]/ ? new_string << char.downcase.prepend('-') : new_string << char
  end
  new_string.join.delete('0-9')
end

p kebabize('myCamelCasedString') #== 'my-camel-cased-string'
p kebabize('myCamelHas3Humps') #== 'my-camel-has-humps'
