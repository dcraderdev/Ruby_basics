



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


bob = Manager.new("Bob", 48)
dan = Worker.new("Daniel", 36)


p Manager.ancestors

puts bob.is_a?(Manager)       #true
puts bob.is_a?(Employee)      #true
puts bob.is_a?(Object)        #true
puts bob.is_a?(Kernel)        #true
puts bob.is_a?(BasicObject)   #true

# .is_a? returns true if the parameters given are found anywhere in the objects ancestry 


puts bob.instance_of?(Manager)        #true
puts bob.instance_of?(Employee)       #false
puts bob.instance_of?(Object)         #false
puts bob.instance_of?(Kernel)         #false
puts bob.instance_of?(BasicObject)    #false

# .instance_of? only returns true if the object is inheriting from the class directly above it









# # exclusive instance methods in subclass

# sublcasses can contain exclusive instance variables and instance methods 
# these exclusive methods are written within their class
# while still inheriting functionality from their superclass

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
  def yell
    "Who's the boss?! #{@name}'s the boss, and I'm not here to fool around."
  end
  # this method is an exclusive method to the manager class
end

class Worker < Employee
  def clock_in(time)
    "Starting my shift at #{time}"
  end
  def yell
    "I'm workin here!"
  end
  # this method is an exclusive method to the worker class

end


bob = Manager.new("Bob", 48)
dan = Worker.new("Daniel", 36)


p Manager.ancestors

p bob.yell
p dan.clock_in("8:30AM")










# # Override methods in a subclass

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
  def yell
  "Who's the boss?! #{@name}'s the boss, and I'm not here to fool around."
  end

  def introduce
    "My name is #{name} and I'm a manager. OBEY ME!"
  end

end

class Worker < Employee
  def clock_in(time)
  "Starting my shift at #{time}"
  end
  def yell
    "I'm workin here!"
  end
end


bob = Worker.new("Bob", 48)
dan = Worker.new("Daniel", 36)
sally = Manager.new("Sally", 45)


p Manager.ancestors

p bob.yell
p dan.clock_in("8:30AM")
p bob.introduce












# # The Super keyword I

# the super keyword allows our newly created classes to inherit the attributes that have already been 
# given to the classes that we are inheriting from

#   3 ways to write super - 
# super without parentheses
# super with parentheses with arguments
# super with parentheses without arguments



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

  attr_reader :rank

  def initialize(name, age, rank)
    super(name, age)
    @rank = rank
  end

  def yell
    "Who's the boss?! #{@name}'s the boss, and I'm not here to fool around."
  end
  
  def introduce
    result = super
    result += " I'm also a manager!"
  end
end


sally = Manager.new("Sally", 21, "Senior VP")
p sally.rank
p sally.name
p sally.age
p sally.introduce




 







# # super keyword II

# without inlcuding parentheses on the super keyword, we pass thru everything that is included in the 
# class above it
# so we cannot include more inforamtion with our drive method

class Car
  def drive
  "Vroom! Vroom!"
  end
end

class Firetruck < Car
  def drive
    super + " WOOOOOOO" 
  end
end

ft = Firetruck.new
p ft.drive


# if we include parentheses we can attach variables/information and pass it along to the method
# so now the method 'drive' will expect information(speed) along with our .drive()

class Car
  def drive
  "Vroom! Vroom!"
  end
end

class Firetruck < Car
  def drive(speed)
    super() + " WOOOOOOO I'm driving #{speed}mph!" 
  end
end

ft = Firetruck.new
p ft.drive(45)




# if we include parentheses with an argument we only want ocant pass a certain argument up from 
# the super to have it perfrom some sort of operation with that argument 
# so here we've allowed the maker information to pass from the superclass down to its subclass

class Car
  attr_reader :maker
  def initialize(maker)
    @maker = maker
  end

  def drive
  "Vroom! Vroom!"
  end
end

class Firetruck < Car
  def initialize(maker, sirens)
    super(maker)
    @sirens = sirens
  end
  def drive(speed)
    super() + " WOOOOOOO I'm driving #{speed}mph!" 
  end
end

ft = Firetruck.new("Ford", 4)
puts ft.maker
p ft.drive(45)










# # class variables across Subclasses


class Product
  @@product_counter = 0

  def self.counter
    @@product_counter
  end

  def initialize
    @@product_counter += 1
  end
end


class Widget < Product
  @@widget_counter = 0

  def self.counter
    @@widget_counter
  end

  def initialize
    super
    @@widget_counter += 1
  end

end

class Thingamajig < Product
  @@thingamajig_counter = 0

  def self.counter
    @@thingamajig_counter
  end

  def initialize
    super
    @@thingamajig_counter += 1
  end
end




watchamajig = Widget.new
p Widget.counter

timeamajig = Thingamajig.new
p Thingamajig.counter

p Product.counter












# # singleton classes and singleton methods


# singleton method is a method that exists on one single instance of an object that we substantiate froma  class

class Player
  def play_game
    rand(1..100) > 50 ? "Winner" : "Loser"
  end

end

bob = Player.new
donovan = Player.new

p donovan.play_game
p bob.play_game

def donovan.trainhard
  "Winner!"
end

p donovan.play_game   
p donovan.trainhard   


# this would act like any other method and can be called on a variable/object in a class
# uses the variable/object name in method name
# if we reuse the same method name that is in the superclass we will overwrite that method
# can't detect singleton methods in .ancestors method
# but we can use .singleton_methods
def donovan.play_game
  "Winner!"
end

p donovan.play_game
# now overwrites to Winner! everytime
p donovan.trainhard

p donovan.singleton_methods
# [:play_game, :trainhard]









# # Hash as initialize argument in a class


class Candidate
  attr_accessor :name, :age, :occupation, :hobby, :birthplace
  def initialize(name, age, occupation, hobby, birthplace)
    @name = name
    @age = age
    @occupation = occupation
    @hobby = hobby
    @birthplace = birthplace
  end
end


senator = Candidate.new("Donovan", 55, "Programmer", "Sitting inside", "Earth")
p senator.occupation
p senator.hobby
p senator.name


# we can feed in parameters/arguments to our newly created class objects
# in a hash so that way we can avoid potential pitfalls/errors
# we can also attach an empty ={} with (name, details = {}) on the inititalize method
# just in case the user doesnt give any arguments


class Candidate
  attr_accessor :name, :age, :occupation, :hobby, :birthplace
  def initialize(name, details = {})
    defaults = {age: 35, occupation: "Candidate", hobby: "Running for office", birthplace: "Mars"}
    defaults.merge!(details)

    @name = name
    @age = defaults[:age]
    @occupation = defaults[:occupation]
    @hobby = defaults[:hobby]
    @birthplace = defaults[:birthplace]
  end
end

info = {age: 53, birthplace: "Earth", occupation: "Programmer", hobby: "Sitting inside"}
senator = Candidate.new("Donovan", info)
p senator.occupation
p senator.hobby
p senator.name

movieboy = Candidate.new("Bob", {hobby: "Horror movies", occupation: "Popcorn vendor"} )
p movieboy.occupation
p movieboy.hobby
p movieboy.birthplace
p movieboy.name

stranger = Candidate.new("Fred", {})
p stranger.occupation
p stranger.hobby
p stranger.birthplace
p stranger.name









