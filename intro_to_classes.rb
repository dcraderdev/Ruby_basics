


# # Intro to Classes


# class are simply blueprints or templates for creating objects
# we gain functionality and help us have tools to help with the program


# Ruby allows us to create our own custom classes to create our own models of things 
# an object is a custom container for data, it is made from a class

# Instanct variables (attributes) are variables that belong to the object

# Atrributes provide information about the object's current state

# Instance methods interact with the object. They also belng to the object. 

# Encapsulation is a OOP concept that restricts access to an object
# restricts direct acces to an object an restricts it to a direct 
# access method that we would like to define



# A class is a blueprint/pattern/template
# an object is an instance of the class,. It is created from the class.
# INSTANTIATION is the process of creating an object from a class
# A class is called an abstract type because it hides the complexity of 
# interacting with the data, much like a method abstacts the complexity of a problem 




# # review of the .class method on Ruby

p 5.class 
# Fixnum
p 8.class
# Fixnum
5.class == 8.class
# True
# Both Fixnums!
p 3.class == 3.14.class
# Fixnum != Float



# # Class and Superclasses

# .superclass returns the class that a current class inherits from. 
# Inheritance follows is "is-a" structure
# The class that inherits from a superclass is called a subclass
# Every class (except BasicObject at the top of the hierarchy) has at least one superclass

# theres also  .ancestors method
# A Super class is the class that current class inherits from
# the .ancestors methods can also be called on a class. It returns an array of all
# superclasses that the class inherits from 
# EXAMPLES

p 5.class.superclass
# Integer
p 5.class.superclass.superclass
# Numeric
p 5.class.superclass.superclass.superclass 
# Object
p 5.class.superclass.superclass.superclass.superclass
#BasicObject
p 5.class.superclass.superclass.superclass.superclass.superclass
#nil  we've reached the top!
# anything past this and we create an error

p 5.class.ancestors
# [Fixnum, Integer, Numeric, Comparable, Object, Kernel, BasicObject]
# comparable, and kernel are not objects...
# but we can see the inheratance hierarchy 










# # the .methods Method


p 5.methods
# we can see here all the possible methods that can be called on 5
# we could call .sort to sort all the name sof the methods we will get listed
p 5.methods.sort
# theres a lot....
# []:!, :!=, :!~, :%, :&, :*, :**, :+, :+@, :-, :-@, :/, :<, :<<, :<=, :<=>, :==, :===,
# :=~, :>, :>=, :>>, :[], :^, :__id__, :__send__, :abs, :abs2, :angle, :arg, :between?, 
# :bit_length, :ceil, :chr, :class, :clone, :coerce, :conj, :conjugate, 
# :define_singleton_method, :denominator, :display, :div, :divmod, :downto, :dup, 
# :enum_for, :eql?, :equal?, :even?, :extend, :fdiv, :floor, :freeze, :frozen?, :gcd, 
# :gcdlcm, :hash, :i, :imag, :imaginary, :inspect, :instance_eval, :instance_exec, 
# :instance_of?, :instance_variable_defined?, :instance_variable_get, :instance_variable_set, 
# :instance_variables, :integer?, :is_a?, :itself, :kind_of?, :lcm, :magnitude, :method, 
# :methods, :modulo, :negative?, :next, :nil?, :nonzero?, :numerator, :object_id, :odd?, 
# :ord, :phase, :polar, :positive?, :pred, :private_methods, :protected_methods, 
# :public_method, :public_methods, :public_send, :quo, :rationalize, :real, :real?, 
# :rect, :rectangular, :remainder, :remove_instance_variable, :respond_to?, :round, :send, 
# :singleton_class, :singleton_method, :singleton_method_added, :singleton_methods, :size, 
# :step, :succ, :taint, :tainted?, :tap, :times, :to_c, :to_enum, :to_f, :to_i, :to_int, 
# :to_r, :to_s, :truncate, :trust, :untaint, :untrust, :untrusted?, :upto, :zero?, :|, :~]








# #   CREATE A CLASS

class Gadgetintro
end

phone = Gadgetintro.new
laptop = Gadgetintro.new
microwave = Gadgetintro.new

p microwave.class
# Gadget

p microwave.methods
# [:tap, :public_send, :instance_variables, :instance_variable_set, :instance_variable_defined?,
#  :remove_instance_variable, :private_methods, :kind_of?, :is_a?, :instance_variable_get, 
#  :method, :public_method, :singleton_method, :instance_of?, :extend, 
#  :define_singleton_method, :to_enum, :enum_for, :<=>, :===, :=~, :!~, :eql?, :respond_to?, 
#  :freeze, :inspect, :object_id, :display, :send, :to_s, :nil?, :hash, :class, 
#  :singleton_class, :clone, :dup, :itself, :taint, :tainted?, :untaint, :untrust, :trust, 
#  :untrusted?, :methods, :protected_methods, :frozen?, :public_methods, :singleton_methods, 
#  :!, :==, :!=, :__send__, :equal?, :instance_eval, :instance_exec, :__id__]


puts phone.respond_to?(:class)
# true
puts phone.respond_to?(:methods)
# true
puts phone.respond_to?(:is_a?)
# true
puts phone.respond_to?(:respond_to?)
# true
puts phone.respond_to?(:length?)
# false
# we havent defined anything that would give a length at this point

# shiny = Gadgetintro.new
# flashy = Gadgetintro.new 

# # initially these two objects have different ids
# # but if we were to point them at one another they would have the same id
# # if they are in the same location in memory, then they are the same object
# glossy = shiny
# p glossy.object.id
# # true
# p shiny.object.id
# # true
# shiny.object.id == glossy.object.id
# # false










# # Instance variables

# Instance variables are variables that belong to a specific object
# instance variables define the objects properties or attributes 
# the instance variables make up the objects state
# each object can have a custom states
# Instance variables begin with the @ symbol (i.e. @name)
# the @ symbol is called a sigil, a special character that denotes the variable's scope
# without the @ sigil, the variable would be interpreted as a 
# local variable to the method it is used in

# @name = "Donovan"
# @age = 29




# # The .initialize method 

# The .initialize method is called immediately when an object is instatiated 
# from a class with the new method

# the .initialize method offers an opportunity to assign values to instance variables 
# in order to define the object's state

# if the .intitialize method is not defined in the calls, each object is intialized 
# with no state

# the assignment of values to instance variables does not mean the values have to stay 
# constant. the objects state can be altered later.

# have to have the method name as intialize, this is how Rub/ill give u 400ky knows that this is the 
# method it will run whenever a new object is created from the gadget class




# # getter methods

# A Getter method are is how our code will be able to safely interact with the outside world
# by placing a barrier between our code and what the used can interact with it allows us to control
# the interaction and make sure all the data flows smoothly
# .getter methods are used as read methods, they read the instance variable





# # setter methods    

# a setter method is another type of instance method but it is resposnible for setting a new value 
# for an insntace variable
# they will actually modify the objects state after it has been defined by the intialize method
# they are also called writer methods because they write a new value to an instance's variables




# # Shortcut Accessor Methods

# will generate both a setter and a getter method





class Gadget

  attr_accessor :username
  # this will automatically generate both the getter and setter for @username




  def initialize
    @username = "User #{rand(1..100)}"
    @password = "topsecret"
    @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"
  end

  # def info
  #    "Gadget #{@production_number} has the username #{@username}"
  # end
  def to_s
    "Gadget #{@production_number} has the username #{@username}, the #{self.class} class and it has the ID #{self.object_id}"
  end
  
  def username            # getter method
    @username
  end

  def username=(new_username)   #setter method
    @username = new_username
  end

  def production_number   # getter method
    @production_number
  end

  def password=(password)   #    def password= is the setter method    def password=(password)  (password) is our new value
    @password = password    #     @password is our instance variable    @password = password    password is our new value
  end                       #      we set the new value to @password    end


end

phone = Gadget.new
laptop = Gadget.new

p phone.username
phone.username =("rubyman")
p phone.username
phone.to_s
# Now we can view and overwrite the username since we have a setter and a getter method. 


phone.password=("bestpassword")
# we can't print the changed password because there isnt a getter method
# but we wont have a problem setting a new password because there is a setter method

# p phone.password
# /Users/donovancrader/Documents/GitHub/Coding_basics/intro-to_classes.rb:276:in `<main>': undefined method `password' for #<Gadget:0x00007ffae2999668> (NoMethodError)
# Did you mean?  password=

# [Done] exited with code=1 in 0.087 seconds














# # Define a Cake class. It should declare 3 instance methods.
#    - The bake method should return the string "Baking the cake"
#    - The slice method should return the string "Slicing the cake"
#    - The sell method should return the string "Sold the cake"


class Cake
  def bake
    puts "Baking the cake"
  end
  def slice
    puts "Slicing the cake"
  end
  def sell
    puts "Sold the cake"
  end
end

birthday = Cake.new


birthday.sell










# # Shortcut Accessor Methods

# attr_accessor :
# will generate both a setter and a getter method





class Gadget

  attr_accessor :username
  # attribute accessor will automatically generate BOTH the getter and setter for @username
  attr_reader :production_number
  # attribute reader will automatically generate just a getter for @production_number (read-only)
  attr_writer :password
  # attribute write will automatically generate just a setter for @password (write-only)
  
  # we can also list them spearated by commas
  # i.e.  attr_reader :production_number, :username
  
  def initialize
    @username = "User #{rand(1..100)}"
    @password = "topsecret"
    @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"
  end
  def to_s
    "Gadget #{@production_number} has the username #{@username}, the #{self.class} class and it has the ID #{self.object_id}"
  end
end

phone = Gadget.new
laptop = Gadget.new

p phone.username
p phone.production_number

phone.username = "secretagent"

p phone.username












# # add parameters to initialize method

# we can add parameters to the intialize method. 
# This will allow us to pass information to the object when we create it


class Gadget

  attr_accessor :username
  attr_reader :production_number
  attr_writer :password

  def initialize(username, password)
    @username = username
    @password = password
    @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"
  end
  def to_s
    "Gadget #{@production_number} has the username #{@username}, the #{self.class} class and it has the ID #{self.object_id}"
  end
end


g1 = Gadget.new("rubyfan102", "programming123")
g2 = Gadget.new("misterprogrammer", "password619")
# when you create the new object, you fill out the parameters that are in the 
# intiaize method of that class

p g1.username
p g1

