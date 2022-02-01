







# # ARRAYS III








p "Lets go over some more array stuff."

a = [1, 2, 3]
b = [1, 2 ,3]

# they look like the same thing but they have a different 
# object ID which could cause problems for us later
# we can show this by using .object_id method

p a.object_id
#70254160125700
p b.object_id
#70254160125680

#if we want them to point to the same point in memory "object_id"
#then we'd need to do make an alias by doing:

a = [1, 2, 3]
b = a

p a.object_id
p b.object_id
# 70361136208300
# 70361136208300

#what w can do instead of having two objects doing the same thing and affecting
# each other if we make any changes we can use:

a = [1, 2, 3]
b = a.dup

b.push(4)
p a
p b

p a.object_id
# 70311760844680
p b.object_id
# 70311760844660

# splat_arguments
# Great for when you don't know how many items will be in the array 


def sum(*numbers)
  sum = 0
  numbers.each { |num| sum += num }
  sum
end

p sum(3, 2, 2, 2, 3)












# # the .any? and .all? method
# booleans

#checks if any of the array meets the criteria of the argument
user_input = [1, 3, 5, 7, 2].any? do |number|
  number.even?
end

p user_input

#checks if all of the array meets the criteria of the argument
user_input = [1, 3, 5, 8].all? {|number| number.odd?}

p user_input














# # the_find_and_detect_methods_in_arrays

#return the first value found in the array that you 
#have provided in the the block


words = ["dictionary", "refrigerator", "platypus", "microwave"]

p words.select { |word| word.length > 8 }

#this will select all the words found that match the conditions set


words = ["dictionary", "refrigerator", "platypus", "microwave"]

p words.find { |word| word.length > 8 }
# this will return the very first word found that matches the cirteria


lottery = [4, 8, 1, 16, 23, 42]

result = lottery.find do |number|
  number.odd?
end

p result



lottery = [4, 8, 1, 16, 23, 42]

result = lottery.find { |number| number.odd? }

p result












# # the_uniq_method

numbers = [1, 2, 3, 3, 4, 6, 6, 1, 8, 0, 9]


p numbers
# p numbers.uniq # will only save variable permanently if using .uniq!
p numbers 


numbers = [1, 2, 3, 2, 7, 7, 8, 9, 1]

def custom_uniq(array)
  final = []
  array.each { |element| final << element unless final.include?(element) }
  final
end

p numbers
p custom_uniq(numbers)



# the_compact_method
# removes all nil values from an array object
# does not remove falses

p [1, 2, 3].compact
# [1, 2, 3]
p [1, 2, 3, nil, nil].compact
# [1, 2, 3]
p [1, 2, 3, nil, false, 2].compact
# [1, 2, 3, false, 2]

sports = ["Baseball", nil, "Football", nil, nil, "Soccer"]

def custom_compact(array)
  final = []
  array.each { |element| final << element unless element.nil?}
  final
end

p custom_compact(sports)
















# # the _inject and _reduce methods
# two names/methods for the same thing

# used to keep track of all the elements/computations you have done besides the one
# you are currently on
# for example a rolling sum


# [10, 20, 30, 40].reduce(0)
# element in the () dictates what number we are starting at
# a.k.a. the previous value before starting

result = [10, 20, 30, 40].reduce(0) do |previous, current| 
  puts "The previous value is #{previous}"
  puts "The current value is #{current}"
  previous + current 
end

puts result


prodresults = [3, 4, 5, 6, 7].reduce(1) do |previous, current|
  puts "The current value is #{previous}"
  puts "Now multiply by #{current}"
  previous * current
end

puts prodresults














# # the _flatten method


# the flatten method removes all interior ensted arrays within the main array
# extracts their elements and puts them back in sequence


registrations = [

                  ["Bob", "Dan", "Jack" ],
                  ["Rick", "Susan", "Molly"],
                  ["Pierce", "Sean", "George"]
]

a, b, c = registrations
p a
p b
p c

p registrations.flatten
# flatten does not save the changes within the variable permanently
p registrations











# # the _zip method on an array

# combines elements from one or more array based on a common or shared index position
# returns nested arrays of the combined elements

names = ["Rick", "Susan", "Molly"]
registrations = [true, false, false]

p names.zip(registrations)

p [1, 2, 3].zip( [4, 5, 6], ["A", "B", "C"])


names = ["Bo", "Moe", "Joe"]
registrations = [true, false, false]

def custom_zip(arr1, arr2)
  final = []
  arr1.each_with_index do |value, index|
    final << [value, arr2[index]]

  end
  final
end

p custom_zip(names, registrations)


# the _sample method
# extracts one or more RANDOM elements out of an array and in a random order


flavors = ["Chocolate", "Vanilla", "Strawberry", "Rum Raisin"]

p flavors.sample
# whatever value is in the () is how many elements it will extract from the array
# elements will not be repeated
# result will be returned in an array if  using 'p' and any value in ()








# # multiply an array

puts 4 * 3
# 12
puts "Ruby" * 5
# RubyRubyRubyRubyRuby

p [1, 2, 3] * 5
# [1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3]
# not a nested array

# Return a new array with the array that's passed in
# as an arument multiplied by the number argument

def custom_multiply(array, number)
  result = []
  number.times do 
    array.each do |elem|
    result << elem
    end
  end

  result

end

# p custom_multiply(array, number)
p custom_multiply([1, 2, 3], 3)    # [1, 2, 3, 1, 2, 3, 1, 2, 3]

#         REFACTORED

def custom_multiply(array, number)
  result = []
  number.times  { array.each { |elem| result << elem } }
  result
end




# # array _union and _combine array

# combines mulitple arrays into one array and then removes duplicates from that array as well
# representation for all the unique elements across a set of arrays

# the symbol for a _union is a vertical pipe |

p [1, 2, 3] | [3, 4, 5]
# [1, 2, 3, 4, 5]
#removes one 3 beacuse it already exsited 

p [1, 2, 3] | [3, 4, 5] | [5, 6, 7]
# [1, 2, 3, 4, 5, 6, 7]
# can chain multiple arrays
# removes one 3 and one 5 beacuse it already exsited 

a = [1, 1, 2, 3, 3] 
b = [3, 4, 4, 5]

def custom_union(arr1, arr2)
  arr1.dup.concat(arr2).uniq
end

p custom_union(a, b)
# [1, 2, 3, 4, 5]




# # remove array items that exist in another array

p [1, 1, 2, 2, 3, 3, 3, 3, 4, 5] - [2, 3]
# [1, 1, 4, 5]

#the minus sign - is a method that calls to remove the parameters you give it


a = [1, 1, 2, 2, 3, 3, 3, 3, 4, 5]
b = [1, 4, 5]

def custom_subtraction(arr1, arr2)
  final = []
  arr1.each { |value| final << value unless arr2.include?(value) }
  final
end

p custom_subtraction(a, b)
# [2, 2, 3, 3, 3, 3]

puts "line 343"

# UN REFACTORED
def custom_subtraction(arr1, arr2)
  final = []
  arr1.each do |value| 
    final << value unless arr2.include?(value)
    end
  return final
end


p custom_subtraction(a, b)
# [2, 2, 3, 3, 3, 3]



# #array intersection with the ampersand symbol & & & & & & 
# shows which values appear in both arrays and does not show duplicates

p [1, 1, 2, 3, 4, 5] & [1, 4, 5, 8, 9]
# [1, 4, 5]

p [1, 1, 2, 3, 4, 5] & [1, 4, 5, 8, 9] & [4, 5, 10, 11]
# [4, 5]
# can string along arrays with more &

a1 = [1, 1, 2, 3, 4, 5]
a2 = [1, 4, 5, 8, 9]

def custom_intersection(arr1, arr2)
  final = []
  arr1.uniq.each do |element|
    if arr2.include?(element)
      final << element
    end
  end
  final
end

p custom_intersection(a1, a2)









