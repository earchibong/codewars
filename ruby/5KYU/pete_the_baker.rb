=begin
Pete likes to bake some cakes. He has some recipes and ingredients. 
Unfortunately he is not good in maths. Can you help him to find out, 
how many cakes he could bake considering his recipes?

Write a function cakes(), which takes the recipe (object) and the available 
ingredients (also an object) and returns the maximum number of cakes 
Pete can bake (integer). For simplicity there are no units for the amounts 
(e.g. 1 lb of flour or 200 g of sugar are simply 1 or 200). Ingredients that 
are not present in the objects, can be considered as 0.

Examples:

// must return 2
cakes({flour: 500, sugar: 200, eggs: 1}, {flour: 1200, sugar: 1200, eggs: 5, 
milk: 200}); 
// must return 0
cakes({apples: 3, flour: 300, sugar: 150, milk: 100, oil: 100}, {sugar: 500, 
flour: 2000, milk: 2000}); 

PROBLEM
input = 2 hashes ...recipe and ingredients
output = integer that...
- represents the maximum number of cakes that can be baked using the recipes 
and considering the ingredients available.

rules =
- ingredients that are not present in the hashes can be considered as 0

data structure = Hash
algorithm = 
given 2 hash tables : recipe and available ingredients
- initalize an empty array
- check if the ingredient hash includes all the ingredients in the recipe hash 
  - iterate over the recipe hash 
  - for all the keys passed into the block...
   - check if the ingredient hash includes the keys
   - return 0 if false
   - if true...
    - iterate over the available hash 
     - for each key:pair passed into the block...
     - if the ingredient is the available or recipe hash is missing, retun nil 
     and push it into the empty array 
     - else divide the available ingredient by the receipe ingredient 
     and push the output into the empty array 
    - return the new array 
    - delete all nil values
    - select the smallest element as the maxnimum number of cakes
=end

def cakes(recipe, available)
  max_cakes = []
  return 0 if recipe.all? {|key,value| available.include?(key) } == false

  available.each do |key,_| 
    if available[key] == nil || recipe[key] == nil 
      max_cakes << nil
    else
      max_cakes << available[key] / recipe[key]
    end
  end
  max_cakes.compact.min
end

p cakes({"flour"=>500, "sugar"=>200, "eggs"=>1},{"flour"=>1200, "sugar"=>1200, 
"eggs"=>5, "milk"=>200}) == 2
p cakes({"cream"=>200, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},
{"sugar"=>1700, "flour"=>20000, "milk"=>20000, "oil"=>30000, "cream"=>5000}) == 11
p cakes({"apples"=>3, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},
{"sugar"=>500, "flour"=>2000, "milk"=>2000}) == 0
p cakes({"apples"=>3, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},
{"sugar"=>500, "flour"=>2000, "milk"=>2000, "apples"=>15, "oil"=>20}) == 0
p cakes({"eggs"=>4, "flour"=>400},{}) == 0
p cakes({"cream"=>1, "flour"=>3, "sugar"=>1, "milk"=>1, "oil"=>1, "eggs"=>1},
{"sugar"=>1, "eggs"=>1, "flour"=>3, "cream"=>1, "oil"=>1, "milk"=>1}) == 1