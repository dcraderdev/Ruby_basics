






# # INTRO TO HASHES





# A hash is opitaml for storing relationships bewteen objects
# a hash of hash map is a data structure that stores key-values
# hashes are called dictionaries, maps, or associative arrays
# a hash object connects unique identifiers (keys) to values

# Hash keys and hash values can be objects of any type
# the hash keys themselves have to be unique (no duplicates)

# hashes are made with curly braces {}

empty_hash = {}

p empty_hash
# {}

p empty_hash.class
# Hash

nfl_roster = {"Tom Brady" => "New England Patriots",
              "Tony Romo" => "Dallas Cowboys",
              "Rob Gronkowski" => "New England Patriots"}

nba_roster = {"Cleveland Cavaliers" => ["Lebron James", "Kevin Love", "Kyrie Irving"], 
              "Golden State Warriors" => ["Stephen Curry", "K Thompson", "Kevin Durant"] }



p nfl_roster["Tony Romo"]
p nba_roster["Golden State Warriors"]
# can extract info from the hash from either side of the rocket symbol

p nfl_roster["Donald Duck"]
# returns 'nil' becuase that search criteria cannot be found






# # symbols as hash keys

p :name
# :name

p :name.class
# symbol
p "name".class
# string

p "name".methods.length
p :name.methods.length

# there are much fewer methods that can be called on a symbol compared to a method
# there are 170 methods you can call on a string
# there are 79 methods you can call on a symbol

# symbols are light weight strings which can operate a little more efficiently 

# person = {:name => "Boris",
#           :age => 25,
#           :handsome => true,
#           :languages => ["Ruby", "Python", "Javascript", "English"]}

person = {name: "Boris",
          age: 25,
          handsome: true,
          languages: ["Ruby", "Python", "Javascript", "English"]}


# these two mean the same thing. the one on the bottom is more frequently used due to less characters

p person[:name]
# Boris
p person[:age]
# 25
p person[:handsome]
# true







# # convert symbols to strings and vice versa

p :age.class
# symbol
p :age.to_s
# "age"
# converts our Symbol to a String

p "age".to_sym
# :age
# converts our String into a symbol





# # the fetch method on a hash

menu = {burger: 3.99, taco: 5.96, chips: 0.5}

p menu[:burger]
# 3.99
p menu[:chips]
# 0.5
p menu[:salsa]
# nil

p menu.fetch(:burger)
p menu.fetch(:chips)

# p menu.fetch(salsa)
# returns error unlike above where it returned a nil

p menu.fetch(:salad, "Not found")
# since we've entered two parameters the program will retrun the second parameter 
# if it cant detect the first
# won't return the second value at all if the program finds the first parameter





# # add a key value pair to a hash with a bracket 

menu = {burger: 3.99, taco: 5.96, chips: 0.5}

menu[:sandwich] = 8.99
p menu
# You can assign a new value to the hash by assigning a value and creating a name
p menu [:taco] = 2.99
# You can overwrite the exisiting value in the hash by assigning a new value


menu.store(:sushi, 24.99)
menu.store(:steak, "delicious")
# adds "delicious" to the second variable
p menu
{:burger=>3.99, :taco=>2.99, :chips=>0.5, :sandwich=>8.99, :sushi=>24.99, :steak=>"delicious"}
puts menu
{:burger=>3.99, :taco=>2.99, :chips=>0.5, :sandwich=>8.99, :sushi=>24.99, :steak=>"delicious"}
# they are the same with puts or p





# # the length and empty? method on a hash

shopping_list = {bananas: 5, oranges: 10, carrots: 3, crackers: 15}
vegan_shopping_list = {}

p shopping_list.length
# 4
# the answer is the number of key value pairs within the hash
p vegan_shopping_list.length
# 0

p shopping_list.empty?
# false
p vegan_shopping_list.empty?
# true
#returns a boolean                                 boolean!





# # the _each method on a hash

capitals = {alabama: "Montgomery", california: "Sacramento",
            arkansas: "Little rock", arizona: "Phoenix"}



capitals.each do |state, capital|
  puts "Cruisin' the states..."
  puts "Wow, now we're in #{state}, lets go visit the capital, #{capital}!"
end
# capitals.each do |state, capital|
#   puts "Cruisin' the states..."
#   puts capital[0]
# end




# # The .each key and .each.value methods

salaries = {director: 100000, producer: 200000,
            ceo: 3000000}

salaries.each_key do |position|
  print "Employee Record:"
  puts "#{position}"
end


salaries.each_value do |salary|
  print "They earn:"
  puts "#{salary}"
end
puts"---"
# be able to accept a hash as the method argument
# and return either an array of each key from the argument
# or an array of each value thats passed into the argument



salaries = {director: 100000, producer: 200000,
  ceo: 3000000}

def boss_salaries(salaries)
  list = []
  salaries.each do |job, salary|
  list << salary
  end
  return list
end

p boss_salaries(salaries)





# # retrieve keys or values from a hash as an array object

shopping_list = {bananas: 5, oranges: 10, 
                  carrots: 3, crackers: 5}
vegan_shopping_list = {}

p shopping_list.keys
# [:bananas, :oranges, :carrots, :crackers]
# returns the symbols from the hash
# will only show unique hash's but thats a given because you cant have a duplicate hash

p shopping_list.values
# [5, 10, 3, 5]
# returns the values
# can have duplicates because it is jsut a value, not the hash itself

#you can check for only those with unique values by using the .uniq method

p shopping_list.values.uniq
# [5, 10, 3]







# # Create a hash with a default value

fruit_cost = {banana: 1.05}

p fruit_cost[:orange]
# nil
p fruit_cost[:kiwi]
# nil

fruit_cost = Hash.new(0)
# going to take a single argument or parameters in the () and set it as the default value
# if the hash searched cannot be found. We can set it to anything. 

fruit_cost[:banana] = 1.05
fruit_cost[:orange] = 0.69
fruit_cost[:kiwi] = 10.99

p fruit_cost[:steak]
# 0
# we get 0 returned because we put that value in the parentheseseseseseseseses
p fruit_cost[:banana]

fruit_cost.default = "Not Found"
# we can use the method .default to assign a default value as well

p fruit_cost[:tofu]
# "Not found" because we have switched the default value





# # convert a hash to an array and vice versa

spice_girls = {scary: "Melanie Brown", 
              sporty: "Melanie", 
              baby: "Emma", 
              ginger: "Geri",
              posh: "Victoria"}

p spice_girls.to_a
# [[:scary, "Melanie Brown"], [:sporty, "Melanie"], [:baby, "Emma"], [:ginger, "Geri"], [:posh, "Victoria"]]
# coverts the hash group into an array of arrays
# each hash pair will be represented in its own array

# if we want to remove all the nested arrays within the array we 
# can use the method _a.flatten
p spice_girls.to_a.flatten
# [:scary, "Melanie Brown", :sporty, "Melanie", :baby, "Emma", :ginger, "Geri", :posh, "Victoria"]

power_rangers = [
  [:red, "Jason"], [:black, "Zach"],
  [:blue,"Billy"], [:yellow, "Trini"], 
  [:pink, "Kimberly"]
]

puts power_rangers.to_h
# {:red=>"Jason", :black=>"Zach", :blue=>"Billy", :yellow=>"Trini", :pink=>"Kimberly"}
# converts to a hash object




# # the _sort and _sort_by methods on a hash

# whenever we call the sort or sort by mtheods on a hash we will get back a mulitdimesnion array
# ruby will convert it to a brand new object that is more formatted for sorting the hash in order
# an array is the superior method for storing some sort of list
# a hash is more of a collection of relationships between objects


pokemon = {squirtle: "Water", 
          bulbasaur: "Grass",
          charizard: "Fire"}

p pokemon.sort
# looks like it returns a hash 
# but its an array that has been sorted alphabetically


# if we want to sort by the VALUE then we need to use .sort_by

p pokemon.sort_by { |pokemon, type | pokemon }
# the vertical pipe variables will represent the hash, value pairs
# the variable after the comma is what we want to sort by
# so above we are sorting for "pokemon"

p pokemon.sort_by { |pokemon, type | type }
# now it sorts by type
# still returns the multidimensional array





# # the .key? and .value? method on a hash

# they always return a boolean unless modified 
# some call them predicate methods... the ones with the .? at the end

cars = {toyota: "camry",
        chevrolet: "aveo", 
        ford: "f-150", 
        kia: "soul"}

puts cars.key?(:ford)
# true
puts cars.key?(:ferrari)
# false

puts cars.value?("camry")
# true
puts cars.value?("ghost")
# false

#don't need the parentheses!!
puts cars.value? "camry"
# true
puts cars.value? "ghost"
# false




# # hashes as method arguments

def calculate_total_1(price, tip, tax)
  tax_amount = price * tax
  tip_amount = price * tip
  price + tip_amount + tax_amount
end

puts calculate_total_1(24.99, 0.18, 0.07)
# 31.2375
# this might not be ideal because if the values are entered in the wrong order as the argument

# if we use a hash this will guarantee the correct values are entered where they need to be
# so instead....

bill = {price: 24.99, tax: 0.18, tip: 0.07}

def calculate_total_2(info)
  tax_amount = info[:price] * info[:tax]
  tip_amount = info[:price] * info[:tip]
  info[:price] + tip_amount + tax_amount
end

p calculate_total_2 (bill)
# 31.2375
# although we had to list a littme more information into the argument/variable
# now we cannot get our values mixed up and our answer will be correct




# # the .delete method

superheroes = {spiderman: "Peter",
              superman: "Clark",
              batman: "Bruce"}

              
p superheroes
# {:spiderman=>"Peter", :superman=>"Clark", :batman=>"Bruce"}
removed = superheroes.delete(:spiderman)
# returns "Peter" , the value that it removed
# permanently mutates/changes the hash                    spiderman is gone FOREVER muhahahaha
p superheroes
# {:superman=>"Clark", :batman=>"Bruce"}

# we can save the deleted info to a variable to call on later
# but only while its being deleted
p removed 






# # the .select and .reject methods on a hash

# we can specify whether the argument will contain the value, the key, or both

recipe = {sugar: 5, flour: 10, salt: 2, pepper: 4}

high = recipe.select { |ingredient, teaspoons| teaspoons >= 5 }
p high
# {:sugar=>5, :flour=>10}
# found the values that have a value >= than 5

low = recipe.reject { |ingredient, teaspoons| teaspoons >= 5 }
p low
# {:salt=>2, :pepper=>4}
# found the values that do not have a value >= than 5

includes_s = recipe.select { |ingredient, teaspoons| ingredient.to_s.include?("s") }
p includes_s





# # the .merge method to combine a hash

market = {garlic: "3 cloves", tomatoes: "5 batches", milk: "3 gallons"}
kitchen = {bread: "2 loaves", yogurt: "20 cans", milk: "100 gallons"}

p market.merge(kitchen)
# merges all the values within the hash
# if two of the same hash's exist, .merge priorititzes the argument () whatevers in the parentheses
# does not permanently overwrite the object
p market

# we can still permanently overwrite with the ! method add on
puts "------------"
#practice emulation - 
# define a method that will return the key value pairs merged into one

market = {garlic: "3 cloves", tomatoes: "5 batches", milk: "3 gallons"}
kitchen = {bread: "2 loaves", yogurt: "20 cans", milk: "100 gallons"}

def custom_merge(hash1, hash2)
  new_hash = hash1.dup
  hash2.each do |key, value|
    new_hash[key] = value
  end
  return new_hash
end

p custom_merge(market, kitchen)
# {:garlic=>"3 cloves", :tomatoes=>"5 batches", :milk=>"100 gallons", :bread=>"2 loaves", :yogurt=>"20 cans"}

#     -REFACTORED-

def custom_merge(hash1, hash2)
  new_hash = hash1.dup
  hash2.each { |key, value| new_hash[key] = value }
  return new_hash
end

p custom_merge(market, kitchen)
# {:garlic=>"3 cloves", :tomatoes=>"5 batches", :milk=>"100 gallons", :bread=>"2 loaves", :yogurt=>"20 cans"}




# # practice
# # go down to the answer if you dont want to make yourself dumber-er

# return a hash where the keys will represent
# the words in the string and the values will
# represent how many times that key occurs

# sentence = "Once upon a time in a land far far away"

# def word_count(string)
# new_string = string.dup

# string.to_sym.each do | word, count | 
# end
# return new_string

# sentence = "Once upon a time in a land far far away"

# def word_count(string)
#   new_string = string.dup
  
#   string.to_sym.each do | word, count | 
#   end
#   return new_string


# p sentence.to_sym.class



# p word_count(sentence)




#          * * *  answer  ***          

# return a hash where the keys will represent
# the words in the string and the values will
# represent how many times that key occurs

# split into words, 
# iterate over it
# sort hash with key and value

sentence = "Once upon a time in a land far far far away"

def word_count(string)
  words = string.split(" ")
  count = Hash.new(0)

  words.each do |word|
    count[word] += 1
  end
count
end


p word_count(sentence)
{"Once"=>1, "upon"=>1, "a"=>2, "time"=>1, "in"=>1, "land"=>1, "far"=>3, "away"=>1}