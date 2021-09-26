# Shovel (<<) adds an element to the end of an array, evaluates to the array

#array.push adds an element(s) to the end of an array, evaluates to the array
#array.pop removes the last element of an array, evaluates to the element that  
  #was removed.


#array.unshift adds an element to the front of an array, evaluates to the array
#array.shift removes the first element of an array, evaluates to the element 
  #that was removed.

puts "\n\n\n"


arr = ["vanessa","candace", "dave"]
print arr
puts

arr << "jia"            #Shovel (<<) is limited to moving a single element
print arr
puts

arr.push("jack", "Karen")  # arr.push can move mulitple elements to the end of 
print arr                   # the array
puts

print arr.pop(3)        # arr.pop delete the last element of the array and prints
puts                    # the element being deleted
print arr               # but the new array will have the last element omitted 
puts

print arr       #arr.unshift will add the new element to the front of the array
puts
arr.unshift("jia")
puts 
print arr
puts 


print arr ,   #arr.shift will delete the first element of the array
puts
arr.shift(2)    #can delete multiple elements with (#)
puts 
print arr
puts 

# array/string.index(ele) - evaluates to the index where ele is found
#array/string.include?(ele) - evaluates to a boolean indicating if else is found

arr = ["SF", "NY", "LA"]

puts arr.index("SF")        #if search object cannot be found code returns blank
puts arr.include?("SF")     #gives answer as boolean

puts

str = "hello"
puts str.include?("ello")       #str.include will search the string and give answer
                                #as a boolean

puts

#array/string.reverse, evaluates to a new reverse version of the array or the string
#array/string.reverse!, reverses an array/string in place

arr = [1, 2, 3, 4]
print arr
puts
arr.reverse!
print arr
puts

print arr.reverse       #can assign a variable to arr.reverse
puts
print arr
puts

str = "hello"
puts str.reverse
puts str
puts str.reverse!
puts str

def is_palindrome(word)
    return word == word.reverse
end

puts is_palindrome("madadam")

puts"\n\n----"
#array/string SLICING
#   array[startIdx..endIdx] - grabs elements from startIdx to endTdx (inclusive)
#   array[startIdx...endIdx] - grabs elements from startIdx to endIdx 
#       (excluding the element at endIdx)



arr = ["a", "b", "c", "d","e"]
print arr[1]
puts

print arr[1..3]
puts

str = "bootcamp"
print str[1..3]

puts "\n\n"
#   string.split evaluates to an array
# array.join evaluates to a string

str = "follow the yellow brick road"

print str.split("the")      #splits string at the designated place dictated by whats between the "".
puts

arr = ["hello", "world", "how", "are", "you"]
puts arr.join (" ")
puts

str = "follow the yellow brick road"

print str.split("o") #essentially removes the "o's" and splits the text
puts
print str.split("l") #would remove the l's and create gaps between side-by-side l's
puts
print str.split("o").join("x") #.split("o")remove all the o's, evaluate to an array
puts                       # and then .join("x") would join back up the arrays adding an
puts                       # x in every spot where the arrays met back, then evaluate to a string


#          .~.~.~HERE ARE SOME CHEAT SHEETS PROVIDED BY APP ACADEMY~.~.~

#           ~.~.~Manipulation~.~.~

# add element(s) to the end using push
people = ["Tommy", "Bex"]
p people.push("Maurice", "Abby")      # prints ["Tommy", "Bex", "Maurice", "Abby"]
p people                              # prints ["Tommy", "Bex", "Maurice", "Abby"]

# remove the last element using pop
people = ["Tommy", "Bex"]
p people.pop()                        # prints "Bex"
p people                              # prints ["Tommy"]

# add elements(s) to the front using unshift
people = ["Tommy", "Bex"]
p people.unshift("Oscar", "Matthias") # prints ["Oscar", "Matthias", "Tommy", "Bex"]
p people                              # prints ["Oscar", "Matthias", "Tommy", "Bex"]

# remove the first element using shift
people = ["Tommy", "Bex"]
p people.shift()                      # prints "Tommy"
p people                              # prints ["Bex"]


#        ~.~.~Checking Existence~.~.~

# check if an element exists in an array using include?
people = ["Tommy", "Bex", "Abby", "Maurice"]
p people.include?("Abby")   # prints true
p people.include?("Mashu")  # prints false

# find the index of an element in an array using index
people = ["Tommy", "Bex", "Abby", "Maurice"]
p people.index("Abby")      # prints 2
p people.index("Maurice")   # prints 3
p people.index("Oscar")     # prints nil
p people.index("Danny")     # prints nil


#       ~.~.~String <> Array~.~.~

# convert a string into an array using split
sentence = "Hey Programmers! What's up."
p sentence.split(" ")      # prints ["Hey", "Programmers!", "What's", "up."]
p sentence.split("a")      # prints ["Hey Progr", "mmers! Wh", "t's up."]
p sentence.split("gram")   # prints ["Hey Pro", "mers! What's up."]
p sentence                 # prints "Hey Programmers! What's up."

# convert an array into a string using join
words = ["Rubies", "are", "red"]
p words.join(" ")          # prints "Rubies are red"
p words.join("-")          # prints "Rubies-are-red"
p words.join("HI")         # prints "RubiesHIareHIred"
p words                    # prints ["Rubies", "are", "red"]

puts"\n\n----"

#                       Enumerable Methods
#   array
#     .each    ex. months.each { |month| puts month }
#     .each_with_index
#   string
#     .each_char
#     .each_char.each_with_index


months = ["Jan", "Feb", "Mar", "Apr"]

# i = 0
# while i < months.length
#     month = months[i]
#     puts month
#                                   OLD METHOD
#     i += 1
# end

months.each { |month| puts month }      #|Variable| 
puts "---single^"
months.each do |month|              # do is a command that can output several 
    puts month                      # blocks of code instead of just one output type
    puts"-"
end


sentence = "hello world"

sentence.each_char do |char|
    print char
end


months.each { |month| puts month }      #|Variable| 
puts "---"
months.each do |month|              # do is a command
    puts month
    puts"-"
end
puts"\n\n---"

sentence = "hello world"

sentence.each_char do |char|
    print char
end

puts"\n\n----each.with.index"



months.each_with_index { |month| puts month }      #|Variable| 
puts "---"
months.each_with_index do |month, idx|              # do is a command
    puts month, idx
    
    puts"-"
end
puts"\n\n---"



sentence = "hello world"

sentence.each_char.with_index do |char, idx|
    puts char && idx
    puts idx
end

puts "\n\n---"

# range enumerable.   { num| puts num }
# (start..end).each iterate from start to end (inclusive)
# (start...end).each, iterate from start to end (excluding end)

 arr = (1..1000)      #["a", "b", "c", "d","e"]

arr.each { |num| puts num }


puts "\n\n----"

def fizzbuzz(max)
    arr = []

    (1...max).each do |num|
        if num % 3 == 0 && num % 5 != 0
            arr << num
        end
        if num % 5 == 0 && num % 3 != 0
            arr << num
        end
        

    
    end

    return arr
end

print fizzbuzz(20)

puts
puts



# repeat a block using times
3.times do
  puts "hi"
end # prints
# hi
# hi
# hi

# specify a range of numbers using (start..end) or (start...end)

# including end
(2..6).each {|n| puts n} # prints
# 2
# 3
# 4
# 5
# 6

# excluding end
(2...6).each {|n| puts n} # prints
# 2
# 3
# 4
# 5





