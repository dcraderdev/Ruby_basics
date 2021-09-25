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
print arr
































