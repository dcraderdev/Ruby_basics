


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

class Gadget
end

phone = Gadget.new
laptop = Gadget.new
microwave = Gadget.new

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














