





# # Modules and Mixins KEYWORD

# like a tool box or a container of constants and methods

# bundles togther the related funcitonality within the module to be more effective in use

# modules create namespaces for methods with the same name

# when we deine a regular method we cant define a method with the same name
# or we run into contflicts

# when you define a method within a module it contains the method within it
# so two modules could contain the same variable within them

# modules cannot be used to create instances
# modules can be mixed into classes to add behavior 

# Syntax and Style
# Modules names are written in UpperCamelCase
# CONSTANTS in modules should be written in ALL CAPS
# Access module methods with the dot operator (.)
# Access module constants with the :: symbol
# The :: symbol is called the scope resolution operator 







module LengthConversions

  WEBSITE = "https://www.codecademy.com/learn/learn-css"

  def self.miles_to_feet(miles)
    miles * 5280
  end

  def self.miles_to_inches(miles)
    feet = miles_to_feet(miles) 
    feet * 12
  end

  def self.miles_to_centimeters(miles)
    inches = self.miles_to_inches(miles) 
    inches * 2.54
  end
end

# the .self in the method refers back to the module LengthConversions

puts LengthConversions::WEBSITE
# https://www.codecademy.com/learn/learn-css
puts LengthConversions.miles_to_feet(100)
# 528000
puts LengthConversions.miles_to_inches(200)
# 12672000
puts LengthConversions.miles_to_centimeters(200)
# 32186880.0









# # Modules with Identical Methods

# Professionaly you should only save one module per save file
# this is for example only...

# module Square
#   def self.area(side)
#     side * side
#   end
# end

# module Rectangle
#   def self.area(length, width)
#     length * width
#   end
# end

# module Circle

#     PI = 3.14159

#     def self.area(radius)
#     PI * radius * radius
#     end
#   end



# puts Square.area(100)
# # 10000
# puts Circle.area(2)
# # 12.56636










# # Import Modules into the current file
 # require needs the ./ and can search through any directory
 # require_relative (does not require ./) and searches 
 # though the same directory as the current file


require "./rectangle.rb"
require "./square"
require "./circle"
# Ruby will assume that we want to import from another ruby file if we dont include
# the .rb extension


puts Circle.area(10)
puts Rectangle.area(13,9)
puts Square.area(7)
# 314.159
# 117
# 49




# # the MATH module

puts Math::PI
# returns PI up to about 15 decimal places

puts Math::sqrt(4)
# will squareroot the argument in the ()

puts Math.sin(90)
# can use geometric methods such as Sin/Cos/Tan










# # MIXINS PART I


# a mixin is a module that is added to a class and gives it a certain function
# whenever we define a class we can mix in modules to add in functionality



class OlympicMedal

  # <, <=, >, =>, <=>, .between?
  include Comparable

  MEDAL_VALUES = {"Gold" => 3, "Silver" => 2, "Bronze" => 1} # spaceship operator returns -1 if left side value less than right side
  #                                                                                         1 if left side value more than right side
  #                                                                                         0 if they are equal in value

  attr_reader :type

  def initialize(type, weight)
    @type = type
    @weight = weight
  end

  def <=>(other)
    if MEDAL_VALUES[type] < MEDAL_VALUES[other.type]
    -1
    elsif MEDAL_VALUES[type] == MEDAL_VALUES[other.type]
    0
    else
    1
    end
  end
end

bronze = OlympicMedal.new("Bronze", 5)
silver = OlympicMedal.new("Silver", 10)
gold = OlympicMedal.new("Gold", 3)


p bronze > silver
# false


puts silver.between?(bronze, gold)
# true









# # MIXINS, PART II

# The Method Lookup Path

# The order that modules are included in a class matters
# Ruby looks at the last module included in the class first

# If multiple modules mix in methods with the same name,
# the last module included in the class definition will be used first


module Purchaseable
  def purchase(item)
    "#{item} has been purchased twice"
  end
end

class Bookstore
  include Purchaseable
  
    def purchase(item)
      "You bought a copy of #{item} at the bookstore!"
    end

end

class Supermarket
  include Purchaseable
  def purchase(item)
    puts "Would you like paper or plastic for your #{item}"
  end
end

class Cornermart < Supermarket
end

barnes_and_noble = Bookstore.new
p barnes_and_noble.purchase("Atlas Shrugged")

shoprite = Supermarket.new
p shoprite.purchase("Ice cream")

quickstop = Cornermart.new
p quickstop.purchase("Slim Jim")

p Bookstore.ancestors
# [Bookstore, Purchaseable, Object, Kernel, BasicObject]
# here is the lineage for the Bookstore class
# shows clases and modules and the mixins within them

bn = Bookstore.new
p bn.purchase("1984")
# "1984 has been purchased"


# we added :     def purchase(item)
#                  "You bought a copy of #{item} at the bookstore!"
#                end
# once we've added a purchase method to the class, the module we have enabled
# on that class is no longer needed if the method and its parameters have been
# completed
# "You bought a copy of 1984 at the bookstore!"

p Supermarket.ancestors
# [Supermarket, Purchaseable, Object, Kernel, BasicObject]
shoprite.purchase("Cereal")
# Would you like paper or plastic for your Cereal

p Cornermart.ancestors
# [Cornermart, Supermarket, Purchaseable, Object, Kernel, BasicObject]

quickstop = Cornermart.new
quickstop.purchase("Slim Jims")






# The prepend and include KEYWORD

# works similar to the inlcude keyword (not the .include? method)
# prioritizes the module method over the method defined in the class

module Purchaseable2
  def purchase(item)
    "#{item} has been purchased."
  end
end

class Bookstore2
  prepend Purchaseable2
  
  def purchase(item)
    "You bought a copy of #{item} at the bookstore!"
  end
  
end

p Bookstore2.ancestors
# [Bookstore, Purchaseable, Object, Kernel, BasicObject]
bn = Bookstore2.new

p bn.purchase("1984")
# "1984 has been purchased."
# because prepend is included before our module method, it prioritizes the method that
# is listed in the module









# # The extend KEYWORD

# when we use the extend method keyword we take
# the modules methods and add them to the class' methods
# used to keep functionality that we want ot use as class methods
# we can define those custom class methods in separate modules
# and then inject them into the class by using extend

module Announcer
  def who_am_i
    "The name of this class is #{self}"
  end 
end

class Dog
  extend Announcer
end

class Cat
  extend Announcer
end

watson = Dog.new

p Dog.ancestors
# [Dog, Object, Kernel, BasicObject]
p Dog.who_am_i
# "The name of this class is Dog"


# include - takes a module's methods and mixs them in to all objects within the class
# prepend - prioritizes the module over the class method when called on
# extend - adds the modules to the class level rather than to the instance level







# # MIXINS III - The Enumerable module

# ruby-doc.org/core-2.3.3/enumerable.html   -   for more info/methods with enumerables

class ConvenienceStore
  include Enumerable
  attr_reader :snacks

  def initialize          # getter method
    @snacks = []
  end

  def add_snack(snack)
    snacks << snack
  end

  def each
    snacks.each do |snack|
      yield snack
    end
  end

end


quikemart = ConvenienceStore.new
quikemart.add_snack("chips")
quikemart.add_snack("candy")
quikemart.add_snack("seeds")
quikemart.add_snack("gum")

p quikemart.each { |snack| puts "#{snack} is delicious" }

p quikemart.map {|snack| snack.length > 3}
# [true, true, true, false]











