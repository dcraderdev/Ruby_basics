





# # ARRAYS II

letters = ["a", "b", "c"]

puts letters
puts letters.length
puts letters[0]

my_arr = ["alvin", true, false, 42]

print my_arr




names = ["Maurice", "Mashu", "Kurstie"]

puts names
names  << "Brian"           #places/adds "object" to the back of the list
names << "Abby"             
names [1] = "Miley"           #replaces specified [object] with "object"

print names



foods = ['pizza', 'sushi', 'burgers', 'fries', 'ramen']

i = 0
while i < foods.length
    puts foods[i]
    i += 1
end



foods = ['pizza', 'sushi', 'burgers', 'fries', 'ramen']

def print_array(arr)
    i = 0
    while i < arr.length
        puts arr[i]
        i += 1
    end
end    

print_array(foods)








# Write a method doubler(numbers) that takes an array of numbers and returns a 
# new array where every element of the original array is multiplied by 2.

def doubler(numbers) 
    doubled_nums = []
    
    i = 0
    while i < numbers.length
        old_num = numbers[i]
        new_num = old_num * 2
        doubled_nums << new_num

        i += 1
    end
return doubled_nums
end

print doubler([1, 2, 3, 4]) # => [2, 4, 6, 8]
puts
print doubler([7, 1, 8])    # => [14, 2, 16]






def doubler(numbers)
    doubled_nums = []

i = 0
    while i < numbers.length
    old_num = numbers[i]
    new_num = old_num * 2
    doubled_nums << new_num

    i += 1
    end

return doubled_nums
end

print doubler([1, 2, 3, 4]) # => [2, 4, 6, 8]
puts
print doubler([7, 1, 8])    # => [14, 2, 16]








# Write a method yell(words) that takes in an array of words and returns a
# new array where every word from the original array has an exclamation point 
# after it.


def yell(words)
    stop_yelling = []

    i = 0
    while i < words.length
        quiet_word = words[i]
        yell_word = quiet_word + "!"
        stop_yelling << yell_word

    i+=1
end
return stop_yelling
end

print yell(["hello", "world"]) # => ["hello!", "world!"]
puts
print yell(["code", "is", "cool"]) # => ["code!", "is!", "cool!"]












# Write a method element_times_index(nums) that takes in an array of numbers 
# and returns a new array containing every number of the original array 
# multiplied with its index.


def element_times_index(numbers)
    mult_ele = []

    i = 0
    while i < numbers.length
        mult_ele << numbers[i] * i
        

        i += 1
    end
return mult_ele
end

print element_times_index([4, 7, 6, 5])       # => [0, 7, 12, 15]
puts
print element_times_index([1, 1, 1, 1, 1, 1]) # => [0, 1, 2, 3, 4, 5]









# Write a method even_nums(max) that takes in a number max and returns an array
# containing all even numbers from 0 to max

def even_nums(max)
    even_arr = []
    i = 0
    while i <= max
        #if i is an even number, then put it in the array
        if i % 2 == 0
        even_arr << i 
        end
    i += 1
    end

return even_arr
end

print even_nums(10) # => [0, 2, 4, 6, 8, 10]
puts
print even_nums(5)  # => [0, 2, 4]








# Write a method range(min, max) that takes in two numbers min and max. The method
# should return an array containing all numbers from min to max inclusive.

def range(min, max)
    num_range = []
    
    i = min
    while i <= max
        num_range << i


        i += 1
    end

return num_range

end

print range(2, 7)   # => [2, 3, 4, 5, 6, 7]
puts
print range(13, 20) # => [13, 14, 15, 16, 17, 18, 19, 20]










# Write a method odd_range(min, max) that takes in two numbers min and max. The 
# method should return an array containing all odd numbers from min to max (inclusive).

def odd_range(min, max)
    odd_arr = []

    i = min
    while i <= max
        if i % 2 != 0
            odd_arr << i
        end

        i += 1
    end


return odd_arr
end

print odd_range(11, 18) # => [11, 13, 15, 17]
puts
print odd_range(3, 7)   # => [3, 5, 7]










# Write a method reverse_range(min, max) that takes in two numbers min and max. 
# The function should return an array containing all numbers from min to max in 
# reverse order. The min and max should be excluded from the array


def reverse_range(min, max)
    rev_arr = []

    i = max - 1
    while i > min
        rev_arr << i

        i -= 1

    end

    return rev_arr
end

print reverse_range(10, 17) # => [16, 15, 14, 13, 12, 11]
puts
print reverse_range(1, 7)   # => [6, 5, 4, 3, 2]








# Write a method first_half(array) that takes in an array and returns a new array 
# containing the first half of the elements in the array. If there is an odd number 
# of elements, return the first half including the middle element.

def first_half(array)
    half_ele = []

    i = 0
    while i < array.length / 2.0
        ele = array[i]
        half_ele << ele

        i += 1

    end
return half_ele
end

print first_half(["Brian", "Abby", "David", "Ommi"]) # => ["Brian", "Abby"]
puts
print first_half(["a", "b", "c", "d", "e"])          # => ["a", "b", "c"]











# Write a method factors_of(num) that takes in a num and returns an array of all 
# positive numbers less than or equal to num that can divide num.


def factors_of(num)

    divis_ = []

    i = 1
    while i <= num
    if num % i == 0
        divis_ << i
    end 

    i += 1
    end
return divis_
end

print factors_of(444444)   # => [1, 3]
puts
print factors_of(4)   # => [1, 2, 4]
puts
print factors_of(8)   # => [1, 2, 4, 8]
puts
print factors_of(9)   # => [1, 3, 9]
puts
print factors_of(16)  # => [1, 2, 4, 8, 16]










# Write a method factors_of(num) that takes in a num and returns an array of all 
# positive numbers less than or equal to num that can divide num.

def factors_of(num)
    divis = []

    i = 1
    while i <= num
        if num % i == 0
            divis << i
        end
        i += 1
    end
return divis
end

print factors_of(3)   # => [1, 3]
puts
print factors_of(4)   # => [1, 2, 4]
puts
print factors_of(8)   # => [1, 2, 4, 8]
puts
print factors_of(9)   # => [1, 3, 9]
puts
print factors_of(16)  # => [1, 2, 4, 8, 16]









# Write a method select_odds(numbers) that takes in an array of numbers and returns 
# a new array containing the odd numbers of the original array.

def select_odds(numbers)
    odd_nums = []

    # i = 0
    # while i < numbers.length
    #     if i % 2 != 0
    #         odd_nums << i
    i = 0
    while i < numbers.length
        num = numbers[i]
        if num % 2 == 1
            odd_nums << num
        end

        i += 1
    end
return odd_nums
end

print select_odds([13, 4, 3, 7, 6, 11]) # => [13, 3, 7, 11]
puts
print select_odds([2, 4, 6])            # => []






def select_odds(numbers)
  odds = []

  i = 0
  while i < numbers.length
    num = numbers[i]
    if num % 2 == 1
      odds << num
    end

    i += 1
  end

  return odds
end

print select_odds([13, 4, 3, 7, 6, 11]) # => [13, 3, 7, 11]
puts
print select_odds([2, 4, 6])            # => []








# Write a method select_long_words(words) that takes in an array of words and 
# returns a new array containing all of the words of the original array that are 
# longer than 4 characters.

def select_long_words(words)
    long_words = []
    i = 0
    while i < words.length
        word = words[i]
        if word.length > 4
        long_words << word
        end
    

    i += 1
    end
    return long_words
end

print select_long_words(["what", "are", "we", "eating", "for", "dinner"]) # => ["eating", "dinner"]
puts
print select_long_words(["keep", "coding"])                               # => ["coding"]










# Write a method sum_elements(arr1, arr2) that takes in two arrays. The method 
# should return a new array containing the results of adding together corresponding 
# elements of the original arrays. You can assume the arrays have the same length.

def sum_elements(arr1, arr2)
    arr_sum = []

        i = 0
while i < arr1.length && arr2.length
    new_ele = arr1[i] + arr2[i]
    arr_sum << new_ele

    i += 1
end

return arr_sum
end

print sum_elements([7, 4, 4], [3, 2, 11])                            # => [10, 6, 15]
puts
print sum_elements(["cat", "pizza", "boot"], ["dog", "pie", "camp"]) # => ["catdog", "pizzapie", "bootcamp"]










# Write a method fizz_buzz(max) that takes in a number max and returns an array 
# containing all numbers greater than 0 and less than max that are divisible by 
# either 4 or 6, but not both.


def fizz_buzz(max)
    divis = []
    i = 0
    while i < max
        if (i % 4 == 0 || i % 6 == 0) && !(i % 4 == 0 && i % 6 == 0)
            divis << i
        end
    
i += 1
    end
return divis
end

print fizz_buzz(20) # => [4, 6, 8, 16, 18]
puts
print fizz_buzz(15) # => [4, 6, 8]







