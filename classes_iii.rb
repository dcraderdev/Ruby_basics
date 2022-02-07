



# # CLASSES III


#               reveiw of inheritance

# a way for a class to obtain all methods from another class

# inheritance avoids duplicate code across multiple classes

# the class inherited from is called the superclass

# the class that inherits is called the subclass or child class

# Ruby only supports single inheritance, but doesnt stop us from 
# using a cascading waterfall system of inheritance

# the subclass is a type of superclass. this is called an "is-a" relationship

# the relationship does not apply in remove_instance_variable
# thus, the subclass can be called a subset of the subclass 










# # Create a subclass

class Employee

  attr_accessor :age
  attr_reader :name

  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce
    "Hi, my name is #{@name} and I am #{age} years old."
  end
end


class Manager < Employee
  # def introduce
  #   "Hi, Im the new manager. my name is #{@name} and I am #{age} years old."
  # end
end

class Worker < Employee
end



boris = Manager.new("Boris", 25)
dan = Worker.new("Daniel", 21)


puts boris.introduce
p boris.class











# # Check inheritance heirarchy

p Manager.ancestors
# [Manager, Employee, Object, Kernel, BasicObject]
p Manager.superclass
# Employee








# # the .is_a? and .instance_of? methods

# predicate methods, will return a boolean 

