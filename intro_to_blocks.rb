





# # INTRO TO BLOCKS PROCS AND LAMBDAS


# a block is a collection of code to be exectuted
# a block is not an object, one of few things thats not an object
# its a attachment that follows a method call - cannot exist without a method
# it changes/alters the method 
# not an argument or parameter
# defined by {} or a do end


evens = [2, 4, 6, 8, 10]

evens.each { |number| puts number ** 3}


colors = ["Red", "Purple", "Green", "Blue"]

statements = colors.map { |color| "#{color} is a great color."}

puts statements
# Red is a great color.           .map returns a new array for each element it passes over
# Purple is a great color.
# Green is a great color.
# Blue is a great color.











# # the yield keyword

# the yield keyword transfers control from the method to the block that
# is attached to the method call (see below for example)
# yield stops the methods exectution and the method waits until the block is done doing 
# whatever it is designed/listed to do within it, then starts back up


def pass_control
  puts "This is inside the method!"
  yield # pass control from the method to the block
  puts "Now the method has started up again"
end

pass_control { puts "Now I'm inside the block!" }   # this is the method call that the yield refers to
# This is inside the method!
# Now I'm inside the block!
# Now the method has started up again


def who_am_i
  adjective = yield
  puts "I am very #{adjective}"
end

who_am_i { "handsome" }
# I am very handsome


def multiple_pass
  puts "Inside the method"
  yield
  puts "Back inside the method"
  yield
end

multiple_pass { puts "Now I'm inside the block" }

# Inside the method
# Now I'm inside the block
# Back inside the method
# Now I'm inside the block












# # PROCS I

# a proc is an object similiar to a block
# but they are meant to be reused
# does not care about arguments and is entirely self contained


# Say we wanted to retun an array that took each element in a given array and cube them **3

a = [1, 2, 3, 4, 5]
b = [6, 7, 8, 9, 10]
c = [ 11, 12, 13, 14, 15]

# we could...

# a_cubes = a.map { |num| num ** 3 }      #[1, 8, 27, 64, 125]
# b_cubes = b.map { |num| num ** 3 }      #[216, 343, 512, 729, 1000]
# c_cubes = c.map { |num| num ** 3 }      #[1331, 1728, 2197, 2744, 3375]

# but dont want to create nearly identical processes for many things
# not efficient

# So we can design a proc for our program to run
# begin proc at the top
# to call on the proc we need to use the ampersand & inside the argument

cubes = Proc.new { |number| number ** 3 }

a = [1, 2, 3, 4, 5]
b = [6, 7, 8, 9, 10]
c = [ 11, 12, 13, 14, 15]


p a.map(&cubes)
# [1, 8, 27, 64, 125]

p a_cubes = a.map(&cubes)
# can assign it to a variable 
# [1, 8, 27, 64, 125]

p a_cubes = a.map(&cubes) # [1, 8, 27, 64, 125]
p b_cubes = b.map(&cubes) # [216, 343, 512, 729, 1000]
p c_cubes = c.map(&cubes) # [1331, 1728, 2197, 2744, 3375]

# this is still inefficient as we are still repeating some identical processes
# we can condense a bit more by using array unpacking
# we can nest arrays within an array
# not much less writing but it looks sexy

a_cubes, b_cubes, c_cubes = [a, b, c].map { |array| array.map(&cubes) }

p a_cubes     # [1, 8, 27, 64, 125]
p b_cubes     # [216, 343, 512, 729, 1000]
p c_cubes     # [1331, 1728, 2197, 2744, 3375]


currencies = [10, 20 , 30, 40, 50]

to_euros = Proc.new { |currency| currency * 0.95 }
to_rupees = Proc.new { |currency| currency * 68.13 }
to_pesos = Proc.new { |currency| currency * 20.67 }

p currencies.map(&to_euros)
p currencies.map(&to_rupees)
p currencies.map(&to_pesos)


# we can have proc return a boolean as well                                   boolean!

ages = [10, 60, 83, 30, 43, 25]

is_old = Proc.new do |age|
  age > 55        # this assigns a boolean value since the proc goes through the array
end               # and checks if that value against the > 

p ages.select(&is_old)
# [60, 92]
# the select method calls on that proc, sees what is true and selects the trues into array
p ages.reject(&is_old)
# [10, 30, 43, 25]
# the reject method calls on that proc, sees what is true and rejects the trues into array











# # the .block given boolean/predicate method

#enables some security in case a block is not attached to a method call that expects one

def pass_control_on_condition
  puts "Inside the method"
  if block_given?       # so only if a block is given will it yield
    yield               # if true, follows the block guidelines
  end
  puts "Back inside the method"
end

pass_control_on_condition { puts "Hello there" }
# Inside the method
# Hello there
# Back inside the method

pass_control_on_condition       # no block given so we just move through the method
# Inside the method
# Back inside the method










# # yielding with arguments



def speak_the_truth
  yield "Donovan" if block_given?
end

speak_the_truth { |name| puts "#{name} is brilliant!" }
speak_the_truth { |name| puts "#{name} is incredible!" }
# Donovan is brilliant!
# Donovan is incredible!


def speak_the_truth(name)
  yield name if block_given?
end
speak_the_truth("Mona") { |name| puts "#{name} is brilliant!" }
# Mona is brilliant!



def number_evaluation(num1, num2, num3)
  puts "Inside the method"
  yield(num1, num2, num3)
end

result = number_evaluation(5, 10, 15) { |num1, num2, num3 | num1 * num2 * num3 }
p result
# 750
# here we are calling for a method within the block in our 
# argument that will replace the yield keyword









# #    a custom _each method

# the purpose of yiled is to transfer control to a block
# a block is where we define some kind of custom or exclusive functionality 

def custom_each(array)
  i = 0
  while i < array.length
    array[i]
    i += 1
  end
end

# This is a while loop that will iterate over each character in the array
# if we want to add a custom argument, or set of different arguments we can add a yield


def custom_each(array)
  i = 0
  while i < array.length
    yield array[i]            # add yield before array[i]
    i += 1
  end
end

names = ["Boris", "Arnold", "Melissa"]
numbers = [10, 20, 30]

custom_each(names) { |name| puts "The length of #{name} is #{name.length}!" }

custom_each(numbers) { |number| puts "The square of #{number} is #{number ** 2}" }

# so what weve done is create custom methods that will happen at the yield
# the custom method used is dictated by what variable we find in the array








# # PROCS II

def greeter
  puts "I'm inside the greeter method"
  yield
end

phrase = Proc.new do 
  puts "Inside the proc"
end

greeter { puts "Hello from the custom block!" }

greeter(&phrase)

hi = Proc.new { puts "Hi there" }

hi.call
# Returns the variable's proc








# # Pass a Ruby method as a proc with the &:



p ["1", "2", "3"].map { |number| number.to_i }
# [1, 2, 3]
# this is a longer approach then we need

p ["1", "2", "3"].map(&:to_i)
# [1, 2, 3]

# we can use this syntax with the to_index method used as a symbol with the &:
# we need to convert the variable inside the () to a symbol so that its recognized as 
# as a string like object to Ruby for this method
# so we use :
# and we need to pass the Proc to the method
# so we use &

p [10, 14, 25].map(&:to_s)
["10", "14", "25"]
# converts to a string

p [1, 2, 3, 4, 5].select(&:even?)
p [1, 2, 3, 4, 5].reject(&:odd?)








# # methods with Proc parameters

# a mehtod can anticipate a proc as a parameter...

def talk_about(name, &myprc)
# if we want to use a proc argument we have to use & inside our method parameters
  puts "Lets me tell you about #{name}."
  myprc.call(name)
end
# have to use the .call method on a proc 
# does the same thing as yielding but used on a proc that has multple possible procs  

good_things = Proc.new do |name|
  puts "#{name} is a genius!"
end


bad_things = Proc.new do |name|
  puts "#{name} is a fool!"
end

talk_about("Donovan", &good_things)
# still need to include the & proc call symobl that coresponds with the method arguments

talk_about("Mona", &bad_things)









# # intro to lambdas


# nearly identical to procs but lamdas tend to break or return an error
# when too many parameters/wrong number of arguments are entered
# compared to Procs where it would not break and return nil for any extra parameters

squares_lambda = lambda { |number| number ** 2 }
# with lambda we don't need the .new
squares_proc = Proc.new { |number| number ** 2 }

p [1, 2, 3].map(&squares_proc)
# [1, 4, 9]
# here we are mapping over the array and calling the proc on each new array
p squares_proc.call(5)
# 25
# here we use the .call method on our proc and then tell Ruby we want to use it on (5)


p [1, 2, 3].map(&squares_lambda)
# [1, 4, 9]
p squares_lambda.call(5)
# 25
# theyre the same as above! so far...



some_proc = Proc.new { |name, age| "Your name is #{name} and your age is #{age}" }

p some_proc.call("Jim")
# "Your name is Jim and your age is "
p some_proc.call("Jim", 25)
# "Your name is Jim and your age is 25"

# since we used a proc, the code still returned somewhat usable code 
# because the proc doesnt care about the # of arguments


some_lambda = lambda { |name, age| "Your name is #{name} and your age is #{age}" }

# some_lambda.call("Jim")
# returns an error --
# `block in <main>': wrong number of arguments (given 1, expected 2) (ArgumentError)

p some_lambda.call("Jim", 25)
# "Your name is Jim and your age is 25"


def diet
  status = lambda { return "You gave in" }
  status.call
  "You completed the diet!"
end

result = diet
p result
"You completed the diet!"
# when return is used within a block for a lambda...
# the return will return control back to the method


def diet
  status = Proc.new { return "You gave in" }
  status.call
  "You completed the diet!"
end

result = diet
p result
"You gave in"
# when return is used within a block for a Proc...
# the return "value" or whatever it is set to do will break out and be returned
# this could break the flow of the program









# # Lambda efficiency example

# we can use lambdas to make our code more efficient and more adaptable
# also used to refactor to make code shorter and simpler

def convert_to_euros(dollars)
  if dollars.is_a?(Numeric)
    dollars * 0.95
  end
end

def convert_to_pesos(dollars)
  if dollars.is_a?(Numeric)
    dollars * 20.67
  end
end

def convert_to_rupees(dollars)
  if dollars.is_a?(Numeric)
    dollars * 68.13
  end
end

# stage 1 of writing some currecny conversion program


# refactored a little... 

def convert_to_euros(dollars)
  dollars * 0.95 if dollars.is_a?(Numeric)
end

def convert_to_pesos(dollars)
 dollars * 20.67 if dollars.is_a?(Numeric)
end

def convert_to_rupees(dollars)
  dollars * 68.13 if dollars.is_a?(Numeric)
end


# refactored with a yiled...

def convert(dollars, currency)
  yield(dollars, currency) if dollars.is_a?(Numeric)
end

# we've copied the repeated method into the yield method, which will make the method iterate 
# over each part of the array with the custom block

p convert(1000, "euros") { |dollars| dollars * 0.95 }
p convert(1000, "pesos") { |dollars| dollars * 20.67 }
p convert(1000, "rupess") { |dollars| dollars * 68.13 }

# but you can see when we still need to write a lot of reapeating information for each
# and its not easy to edit if anything needed to be changed


# refactored with a lambda

to_euros = lambda { |dollars| dollars * 0.95 }
to_pesos = lambda { |dollars| dollars * 20.67 }
to_rupees = lambda { |dollars| dollars * 68.13 }
# the variables inside the {} need to match
# but are not the same as the variables inside our parameters/argument
# here we've set block methods to take effect when called on when we perform a method
# and we can edit the code in only one part instead of each custom block


def convert(dollars2, currency_lambda)
  currency_lambda.call(dollars2) if dollars2.is_a?(Numeric)
end

p convert(1000, to_euros) 
p convert(1000, to_pesos) 
p convert(1000, to_rupees)
# 950.0
# 20670.0
# 68130.0

# in total we've shrunk 21 lines of code to 9 and it is much more efficient










