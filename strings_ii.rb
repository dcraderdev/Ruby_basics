

# Strings II










num = 40        #num = 40 when code is ran
num + 5         #num will still be 40 when nunm is ran independently
puts "-----1"
puts num        #40


num += 2
puts "----2"
puts num        #42

isEven = num % 2 ==0
puts "----3"
puts isEven             #True

isNegative = num < 0
puts "---4"
puts isNegative        #false

puts "----
---"
#methods

puts "Hey prgrammers!"
puts "What's for lunch?"  

#defining a method...
def sayMessage
puts "Hey prgrammers!"
puts "What's for lunch?"
end
#call this method
puts "before the method call"
sayMessage
puts "after the method call"

def say_hello(person)
    puts "Hello! " + person + "."
end

say_hello("Mike")
say_hello("Oscar")
def say_hello(person1, person2)
puts "Hello " + person1 + " and " + person2 + "."
end
say_hello("Jose", "Oscar")

def average_of_three(num1, num2, num3)
sum = num1 + num2 + num3 
            avg = sum / 3
end   

puts average_of_three(3, 7, 8)
puts average_of_three(2, 5, 17)
puts average_of_three(2, 8, 1)

puts "---"
def average_of_three(num1, num2, num3)
    sum = num1 + num2 + num3
    avg = sum / 3.00000
    return avg
end

puts average_of_three(3, 7, 8)
puts average_of_three(2, 5, 17)
puts average_of_three(2, 8, 1)

#Write a method, goodbye(name), that takes in a string
#saying bye to that name. See the examples below.
#
#Examples:

def goodbye(name)  
return "Bye " + name + "."
end

puts goodbye("Daniel")
puts goodbye("Felcia")


puts "---"
 #Conditionals

num = 3
if num > 0 
    puts "positive"
elsif num < 0
    puts "negative"
else
    puts "its a trap!"
end
puts "----"

num = 3

if num > 0
    puts "positive"
elsif num < 0
    puts "negative"
else
    puts "its a big nada!"
end

if num % 2 == 0
    puts "even"
else 
    puts "odd"
end

# else or els makes the condtitions exclusive
#elsif 


puts"-----"

puts "Practice Problems"

#WRONG FIRST ANSWER
#def is_div_by_5(number)
#	if number % 5 == 0
#      puts "positive"              These commands are used in num statements
#   elsif !% 5                      not in methods that use def
#     puts "negative"
#   else
#     puts "number is 0"
#return
#end

#puts is_div_by_5(10) # => true
#puts is_div_by_5(40) # => true
#puts is_div_by_5(42) # => false
#puts is_div_by_5(8)  # => false

#CORRECT
def is_div_by_5(number)
    if number % 5 == 0
    return true                     
        else
    return false
    end
end

puts is_div_by_5(10) # => true
puts is_div_by_5(40) # => true
puts is_div_by_5(42) # => false
puts is_div_by_5(8)  # => false

puts "-----"
def either_only(number)
  if (number % 3 == 0 || number % 5 == 0) && !(number % 3 == 0 && number % 5 == 0)
    return true
  else
    return false
  end
end

puts either_only(9)  # => true
puts either_only(20) # => true
puts either_only(7)  # => false
puts either_only(15) # => false
puts either_only(30) # => false



def larger_number(num1, num2)
if num1 > num2
  return num1                   #woooo did it first T, lessgoooo
else num2 > num1
  return num2
end
end

puts larger_number(42, 28)   # => 42
puts larger_number(99, 100)  # => 100
puts larger_number(67, 299)   # => 42
puts larger_number(9349, 700)  # => 100


# def longer_string(str1, str2)
# 	if str1.length >= str2.length
#       retrun str1           #<----- 'RETRUN', should have know this was the error 
#     else                     #              when it showed up as blue text
#       return str2
#     end
# end

# puts longer_string("app", "academy") # => "academy"
# puts longer_string("summer", "fall") # => "summer"
# puts longer_string("hello", "world") # => "hello"


#Correct code without typos but not the prettiest format
def longer_string(str1, str2)
if str1.length >= str2.length
    return str1
    else
    return str2
  end
end

puts longer_string("app", "academy") # => "academy"
puts longer_string("summer", "fall") # => "summer"
puts longer_string("hello", "world") # => "hello"




# Write a method number_check(num) that takes in a number and
# returns a string. The method should return the string 'positive'
# if the num is positive, 'negative' if the num is negative, and 
# 'zero' if the num is zero.



def number_check(num)
  if num > 0
    return "positive"
  elsif num < 0 
    return "negative"
  else num == 0
    return "zero"
    
  end

end

puts number_check(5)    # => "positive"
puts number_check(-2)   # => "negative"
puts number_check(0)    # => "zero"


def word_check(word)
  if word.length > 6
    return "long"
  elsif word.length < 6
    return "short"
  else                                  #Oh yeah, First T, too ez, lessgo
    return "medium"
  end
    
  

end

puts word_check("contraption") # => "long"
puts word_check("fruit")       # => "short"
puts word_check("puzzle")      # => "medium"