
# # AM Coder - Ruby OOP Masterclass 
# # (Class/Instance Methods/Properties, Inheritance, Rails Macros)
# # https://www.youtube.com/watch?v=n_lvik2UYZg







class Dog
  @@totalDogs = 0

  def initialize(name)
    @name = name
    @legs = 4
    @ears = 2
    @tail = true
    @@totalDogs += 1
  end
  def Dog.total
    @@totalDogs += 1
  end 
  def Dog.stuff
    puts "look, I ran!"
  end
  def setLegs(value)
    @legs = value
  end
  def name
    @name
  end
end

class SmallDog < Dog
  stuff :athing

end

Spot = SmallDog.new("Spot")
Fluffy = Dog.new("fluffy")

puts Spot.name
puts Fluffy.name

puts Dog.total





# code with notes


# if I want to create a definition of someting I need to create a clasee
class Dog
  @@totalDogs = 0

  def initialize(name)
    @name = name
    @legs = 4
    @ears = 2
    @tail = true
    @@totalDogs += 1
  end
  def Dog.total
    @@totalDogs += 1
  end 
  def Dog.stuff
    puts "look, I ran!"
  end
  def setLegs(value)
    @legs = value
  end
  def name
    @name
  end
end

class SmallDog < Dog
  stuff :athing
  
end

Spot = SmallDog.new("Spot")
# I can create a new object and add it to any class 
Fluffy = Dog.new("fluffy")

puts Spot.name
puts Fluffy.name

puts Dog.total