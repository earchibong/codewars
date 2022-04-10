=begin
Write a function that when given a URL as a string, parses out just the domain 
name and returns it as a string. For example:

domain_name("http://github.com/carbonfive/raygun") == "github" 
domain_name("http://www.zombie-bites.com") == "zombie-bites"
domain_name("https://www.cnet.com") == "cnet"

problem
input = string 
output = string that...
  - is a string cut /selected from the input string... domain name 

examples:
domain_name("http://github.com/carbonfive/raygun") == "github" 
domain_name("http://www.zombie-bites.com") == "zombie-bites"
domain_name("https://www.cnet.com") == "cnet"

data structure = array
algorithm = 
given a string... 
- split the string with a delimter [/]
- iterate over the collection and select strings that include a period
- split the selected string with a delimter ('.')
- if/else statement
  - if first element in retruned array includes "www", return the next element
  - else return the first element
=end

def domain_name(string)
  str = string.split('/')
  selected = str.select {|string| string.include?('.')}.join.split('.')
  selected[0].include?('www') ? selected[1] : selected[0]
end


p domain_name("http://google.com") == "google"
p domain_name("http://google.co.jp") == "google"
p domain_name("www.xakep.ru") == "xakep"
p domain_name("https://youtube.com") == "youtube"
p domain_name("http://github.com/carbonfive/raygun") == "github" 
p domain_name("http://www.zombie-bites.com") == "zombie-bites"
p domain_name("https://www.cnet.com") == "cnet"
