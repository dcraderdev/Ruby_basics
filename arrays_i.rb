

# # ARRAYS I

# ...and some more string stuff too
# ...some block stuff at the bottom as well








# # access_multiple variables

channels = ["CBS FOX NBC ESP UPN"]
p channels.values_at(0)
# ["CBS FOX NBC ESP UPN"]

p "hello"
# "hello"

p channels.values_at( 0, -1)
# ["CBS FOX NBC ESP UPN", "CBS FOX NBC ESP UPN"]



# # the_slice_method

numbers = [0, 2, 4, 2, 10, 12, 14]

p numbers.slice(3)
# 2
p numbers.slice(100)
# nil




# # overwrite_one_or_more_array_elements

fruits = ["Apple", "Orange", "Grape", "Banana"]

fruits[1]= "Watermelon"
p "#{fruits[1]} has been added at pos. 1 as you can see '#{fruits}''."
# overwrite an array by adding [] and the place in the array you want to insert
fruits[6] = "Rasp"
p fruits

fruits[3,2] = ["Vberry", "yberry"]
p fruits

fruits[0..2] = "Canteloupe"
p fruits






# # the_length_and_size_methods

p [1, nil, 2, 3, nil, 4, "Hello", 3.14].length
p [1, nil, 2, 3, nil, 4, "Hello", 3.14].size

p [].length

p [1, nil, 2, 3, 2, nil, 4, "Hello", 3.14].count(2)
#counts the number of times (2) pops up in the array








# # the_empty?_and_nil?_method

puts [1, 2, 3].empty?
#false
puts [].empty?
#true






# # the_first_and_last_method

arr = [1, 3, 5, 7, 9, 15, 21, 18, 6]

p arr.first
p arr.last

p arr.first(1)
# (#) dictates how many objects you pull from the array
p arr.last(2)

def custom_first(arr, num = 0)
    return arr[0] if num ==0
    arr [0, num]
end

p custom_first(arr)
#1
p custom_first(arr, 1)
#1
p custom_first(arr, 3)
#1, 3, 5


def custom_last(arr, num = 0)
    return arr[-1] if num ++ 0
    arr p [-num..-1]

end

p custom_last(arr)
#6
p custom_last(arr, 5)
#6









# # the_push_method_the_shovel_operator_and_and_the .insert_method

locations = ["House", "Airport", "Bar"]

locations.push("Restaurant")
p locations
#["House", "Airport", "Bar", "Restaurant"]
#adds the () to the end

locations << "Saloon" 
p locations
#["House", "Airport", "Bar", "Restaurant", "Saloon"]
#adds to the end
locations << "Saloon #2" << "Gamestop"
#can add multiple objects with multiple shovels

locations.insert(1, "Airport2", "Bar2")
#minimum of two arguments (argument1 is where to insert, argument2 is what to insert)
    
p locations
#["House", "Airport2", "Bar2", "Airport", "Bar", "Restaurant", "Saloon", "Saloon #2", "Gamestop"]









# # the_pop_method
#removes method from the array and can even store it in a variable

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p arr
#[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.pop
p arr
#[1, 2, 3, 4, 5, 6, 7, 8, 9]
arr.pop
p arr
#[1, 2, 3, 4, 5, 6, 7, 8]

last_item = arr.pop
#removes the last item but stores it as 'last_item'
#you can return mulitple items with 'arr.pop(#)''
p last_item
#8









# # the_shift_and _the_unshift_methods

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p arr
#[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.shift
#does the same thing as pop except it removes the first variable
#also can be stored in a variable
p arr
#[2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.unshift(25)
p arr
#[25, 2, 3, 4, 5, 6, 7, 8, 9, 10]
#adds variable to the front of the array
#can add multiple with (#, #, #)
arr.unshift(28, 300, 450)
p arr
#[28, 300, 450, 25, 2, 3, 4, 5, 6, 7, 8, 9, 10]











# # equality_and_inequalities_operators_with_arrays
a = [1, 2, 3]
b = [1, 2, 3, 4]
c = [3, 2, 1]
d = [1, 2, 3]

p a == b
#false
p a == c
#flase
p a == d
#true

p a != b
#true
p a != c
#true
p a != d
#false

a = ["Skittles", "Starbursts"]
b = ["skittles", "starbursts"]
p a == b
#will return false because it is case sensitive







# # the_spaceship_operator
#   <=>

p 5 <=> 5
#0
#returns 0 because they are equal

p 5 <=> 10
#-1
#if left side is smaller we get a -1 returned

p 5 <=> 3
#1
#if left side is greater we get a +1 returned

p 5 <=> [1, 3, 5]
#nil
#can only compare like things

p [3, 4, 5] <=> [3, 4, 5]
#0
#returns 0 because they are equal

p [3, 4, 5] <=> [3, 4, 10]
#-1
#returns -1 because right is bigger

p [3, 4, 5] <=> [3, 4, -10]
#1
#returns 1 because left is bigger









# # convert_range_to_an_array
letters_range = "A".."T"
p letters_range
p letters_range.to_a
#converts to an array
letters_array = letters_range.to_a
# set the variable as the array










# # the_is_a?_method

p 1.class
p 3.14.class
p 999999999999999999999.class
p true.class
p false.class
p nil.class
p [1, 2, 3].class
p "Hello".class
#Integer
#Float
#Integer
#TrueClass
#FalseClass
#NilClass
#Array
#String
puts
puts

puts 1.is_a?(Float)
#case sensitive


arr = ["a", "b"]
if arr.is_a?(Array)
    arr.each { |e| puts e }
end
#for each element in the array puts it out there

p 1.is_a?(Fixnum)
p 1.is_a?(Integer)
p 1.is_a?(Object)
p 1.is_a?(BasicObject)

#theres a heiarchy of classes that form a pyramid


#-=-=-===-=-









# # review_of_blocks


# 3.times { |number| puts "Hello there, we are currently on loop number #{number} " }
# #|number| is the iteration number we are on 

5.times do |number|
    square = number * number
    puts "The current number is #{number} and its square is #{square}"
end



candies = ["Sour Patch Kids", "Milky Way", "Airheads"]

candies.each do |candy|
    puts "I love eating #{candy}"
    puts "It's mmmmm so good. mmmm tasty."
end




names = ["bo", "moe", "joe"]

names.each { |name| puts name.upcase}


names = ["bo", "moe", "joe"]

names.each do |name| 
    puts name[0].upcase + name[1..name.length]
end


[1, 2, 3, 4, 5].each do |num|
    square = num * num
    puts "The square of the #{num} is #{square}"
end

fives = [5, 10, 15, 20, 25, 30, 35, 40]

fives.each do |number|
    if number.even?
        puts number if number.even?
    else
        puts "#{number} is not even!"
    end
end


numberz = 5..16
fives = numberz.to_a
odds = []
evens = []

fives.each do |number|
    if number.even?
        puts number if number.even?
        evens << number
    else
        puts "#{number} is not even, added to the odds array!"
        odds << number
    end
end

p odds
p evens










# # each_within_each
shirts = ["striped", "plain white", "plaid", "band"]
ties = ["polka dot", "solid color", "boring"]

shirts.each do |shirt|
    ties.each do |tie|
        puts "Option - A #{shirt} shirt and a #{tie} tie."
    end
end










# # the_for_loop

numbers = [3, 5 , 7]

numbers.each { |num| puts num }
#with the each method the variable inside the block method stays 
#within the method and wont 
# leach out into the program

#within the for loop method the variable is preserved
#can be troublesome to use the for loop


numbers = [4, 6, 8]

for variable in numbers
    puts variable
end

p variable


puts "___"
rng = 1..10
rng.each do |rng_number|
    print rng_number
end










# # the .each_wtih_index_method

colors = ["Red", "Blue", "Yellow", "Green"]

colors.each do |color|
    puts "Moving on!"
    puts "The current color is #{color}!"
end
puts"___"

colors = ["Red", "Blue", "Yellow", "Green"]

colors.each_with_index do |color, index|
    puts "Moving on to number #{index+1}!"
    puts "The current color is #{color}!"
end










# # write a loop that iterates over a numeric array

# output the PRODUCT of each number and its index position

fives = [5, 10, 15, 20, 25]

fives.each_with_index do |five, index|
    puts "The first number in the array is #{five} at index #{index}"
    puts five * index
end


nums = [1, 2, 3, 4, 5]
sum = 0









# # write a loop that gives me a sum of

# the products of each index and its value

nums.each_with_index do |num, i|
    #puts "The num is #{num} and the index is #{i}"
    result = num * i 
    sum += result
end

p "sum = #{sum}"


arr = [-1, 2, 1, 2, 5, 7, 3]

# Prints the product of the elements and its index pos.
# if the index position is greater than the element
# Create the custom def with a method

def print_if(array)
    array.each_with_index do |number, index|
        if index > number
            puts "Match! Index is #{index} and the number is #{number}"
            puts "The result of multiplying them is #{number * index}"
        end
    end
end

print_if(arr)









# # the .map_or .collect_method

numbers = [1, 2, 3, 4, 5,]
squares = numbers.map { |number| number ** 2}

p squares


# numbers = [1, 2, 3, 4, 5,]
# squares []
# numbers.each { |number| squares << number ** 2}


fahr_temperatures = [105, 73, 40, 18, -2]

celsius_temperatures = fahr_temperatures.map do |temp|
    minus32 = temp - 32
    minus32 * (5.0/9.0)
end

p celsius_temperatures


results = [1, 2, 3].map { |number| number ** 2 }
p results


numbers = [3, 8, 11, 15, 89]








# # write a cubes method that accepts and array
# # and returns a new array. the new array
# # will have all the values from the original one cubed.

def cubes(array)
    array.map {|number| number ** 3 }

end

p cubes(numbers)











# # Iteration_over_arrays_with_while_or_until_loops

animals = ["Lion", "Zebra", "Baboon", "Cheetah"]

i = 0
while i < animals.length

    puts animals[i]
    i += 1
end









# # the_break_keyword

prizes = ["Pyrite", "Pyrite", "Pyrite", "Pyrite", "Gold", "Pyrite"]

i = 0

while i < prizes.length
    current = prizes [i]
    if current == "Gold"
        puts "YAY! Found it at position #{i+1}."
        break
    else
        puts "#{current} is not gold!"
    end
i += 1
end

numbers = [1, 2, 3, "Hello", 5, 6, 7, 8]





numbers.each do |num|
    if num.is_a?(Fixnum)
        puts "The square of #{num} is #{num **2}"
    else
        puts "That aint right man!"
        break
    end
end

numbers = [1, 2, 3, "Hello", 5, 6, nil, 7, 8, [] ]





numbers.each do |num|
    unless num.is_a?(Fixnum)
    next
    else
        puts "The square of #{num} is #{num **2}"
    end
end










# # the_Reverse_method

p "Hello".reverse

#  "olleH"

numbers = [5, 13, 1, -2, 8]
words = ["caterpillar", "kangaroo", "apple", "zebra"]

p numbers.sort
p words.sort
# ["apple", "caterpillar", "kangaroo", "zebra"]

p words.sort.reverse
# ["zebra", "kangaroo", "caterpillar", "apple"]


a = [1, 2, 3, 4]
b = [5, 6, 7]

def custom_concat(arr1, arr2)
    arr2.each {|elem| arr1 << elem}
    arr1
#return arr1 with all of the elemetns from arr2
# added to the end of it
end
p custom_concat(a, b)
# [1, 2, 3, 4, 5, 6, 7]









# The_max_and_min_method

stock_prices = [934.12, 88.123, 12.3, 2]

p stock_prices.max
#934.12
p stock_prices.min
#2

fruits = ["apple", "banana", "watermellon", "cantelopue", "kiwi"]

p fruits.max
p fruits.min
puts "____"

fruits = ["apple", "banana", "watermellon", "cantelopue", "kiwi"]

def custom_max(arr)
#return the maximum value in the array
    arr.sort[-1]
end


def custom_min(arr)
#return the minimum value in the array
    arr.sort[0]
end


p custom_max(fruits)
p custom_min(fruits)









# # the_include?_method_on_an_array

p "Helllo".include?("l")

numbers = [1, 2, 3, 4, 55, 567]

p numbers.include?(2)
p numbers.include?(123123)
p numbers.include?(-55)










# # the .index_and_find_index_method_on_an_array

colors = ["Red", "Blue", "Green", "Red"]

p colors.index("Red")
#returns 0 becuase .index returns the first place that the thing searched pops at is returned










# # the_.select_method
grades = [80, 95, 13, 76, 25, 39]

matches = grades.select do |number|
    number >= 75
end

p matches









# # the_reject_method

animals = ["cheetah", "cat", "lion", "elephant", "dog", "cow"]

resultreject = animals.reject { |animal| animal.include?("c") }
resultselect = animals.select { |animal| animal.include?("c") }


p resultreject
p resultselect










# # unpack_a_mulidimesional_Array

users = [["Bob", 25, "Male"], ["Susan", 105, "Female"], ["Larry", 12, "Male"]]

p users[0]
#["Bob", 25, "Male"]
#this pulls out the first array within the array
# so by adding another request we can pull the secondary info out of the array we generated

p users[0][1]
# 25

bob, susan, larry = users
 p users
#[["Bob", 25, "Male"], ["Susan", 105, "Female"], ["Larry", 12, "Male"]]

p larry
#["Larry", 12, "Male"]
p susan
#["Susan", 105, "Female"]










# # the_partition_method



foods = [ "Steak", "Veggies", "Steak Burger", "Kale",
          "Tofu", "Tuna Steaks" ]


good = foods.select { |food| food.include?("Steak") }
bad = foods.reject  { |food| food.include?("Steak") }

p good
p bad
# This is an ok solution but the better/simpler way to code would be to use the .partition method

good, bad = foods.partition { |food| food.include?("Steak") }

p good
p bad









# # the .split_method_on_an_array

sentence = "Hi, my name is Donovan. There are spaces here!"

words = sentence.split(". ")

words.each { |word| puts word.length }


#iterate_over_string_characters

"Hello world".each_char { |char| puts char }

#another method to do this is...

name = "Donovan"

puts name.split("")

# or..

puts name.chars
#we can assign a variable
letters = name.chars
letters.each { |letter| puts "#{letter} is awesome!"}

# D is awesome!
# o is awesome!
# n is awesome!
# o is awesome!
# v is awesome!
# a is awesome!
# n is awesome!










# # the_join_method_on_an_array

names = ["Joe", "Moe", "Bob"]

p names.join 
#without argument it simply adds every object with the array
# "JoeMoeBob"
p names.join("-")
# whatever is in the parenthesese is how it will separate the concatanation
# "Joe-Moe-Bob"

def custom_join(array, delimiter = "")
    string = ""
    array.each_with_index do |group, index|
    string << group
    string << delimiter unless index == array.length - 1 
    end
    string
end


p custom_join(names)
p custom_join(names, "-")











# # the_count_method_on_an_array

puts "Hello World".count("l")
#3  for 3 "l's"

puts "Hello World".count("lo")
#5 counts all the l's and 0's. does not need spacing or commas

puts "An amazin aarvark appeared".count("Aa")

# return the number of total times
# the search characters are in the string

def custom_count(string, search_characters)
    count = 0
    string.each_char do |char|
        if search_characters.include?(char)
            count += 1
        end
    end
    count
end

puts custom_count("An amazin aarvark appeared", "Aa")

# refactoring can be done

def custom_count(string, search_characters)
    count = 0
    string.each_char { |char| count += 1 if search_characters.include?(char) }
    count
end

puts custom_count("An amazin aarvark appeared", "Aa")









# # the_index_and_rindex_methods

#they return the index position of either the first occurance or the last occurance of the parameters
# that is passed thru

fact = "I am very handsome."

p fact.index("I")
    # 0 
    # becuase the first occurance of a I is @ index pos 0

p fact.index("e", 7)
    # we can start at a differnt index position by adding a comma and our parameters
    # returns 17 because it starts at index pos. 7 and looks for next e

p fact.rindex("e")
    #17 
    #still returns 17 because although it searches from last to first it still returns
    # the index pos. it is found at, which is the 17th pos.


fact = "I am very handsome"

#return nil if substring not found in string
#return index position of substring if found in string

def custom_index(string, substring)
    return nil unless string.include?(substring)
        length = substring.length
        string.chars.each_with_index do |char, index|
            sequence = string[index, length]
            return index if sequence == substring
        end

end

    p custom_index(fact, "I") # 0
    p custom_index(fact, "h") # 10
    p custom_index(fact, "z") # nil
    p custom_index(fact, "am") # 2



















