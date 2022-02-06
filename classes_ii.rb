





# # CLASSES II




# # private methods

# intialize is a private method for example...
# it can only be used/called on within the object
# it cannot be called on from outside the method
# all other instance methods are already available for use

class Gadget

  attr_writer :password
  attr_reader :production_number
  attr_accessor :username

  def initialize(username, password)
    @username = username
    @password = password
    @production_number = generate_production_number
  end

  def to_s
    "Gadget #{@production_number} has the username #{@username}.
    It is made from the #{self.class} class and it
    has the ID #{self.object_id}."
  end

  def generate_production_number
    start_digits = rand(10000..99999)
    end_digits = rand(10000.99999)
    alphabet = ("A".."Z").to_a
    middle_digits = "2017"
    5.times { middle_digits << alphabet.sample }
    "#{start_digits}-#{middle_digits}-#{end_digits}"
  end

end

phone = Gadget.new("user", "password")
p phone.production_number










# # Protected methods

# sort of an inbewteen between public and private methods
# when it comes to their usability and access to their state


# protected methods can be invoked only by objects of the same class
# protected methods can be called within the same family of class
# protected methods are used to compare objects of the same class

class Car


  def initialize(age, miles)
      base_value = 20000
      age_dedcution = age * 1000
      miles_deduction = (miles / 10.to_f)
      @value = base_value - age_dedcution - miles_deduction
  end

  def compare_car_with(car)
    self.value > car.value ? "Your car is better!" : "Your car is worse."
  end

protected
# by writing protected here we protect all the information below from being
# accessed outright but the info can still be used in any methods listed above 

  def value
    @value
  end
end


civic = Car.new(3, 30000)
fiat = Car.new(1, 20000)

p civic.compare_car_with(fiat)








# adding validation to setter methods

class Gadget

  attr_reader :production_number
  attr_accessor :username

  def initialize(username, password)
    @username = username
    @password = password
    @production_number = generate_production_number
  end

  def to_s
    "Gadget #{@production_number} has the username #{@username}.
    It is made from the #{self.class} class and it
    has the ID #{self.object_id}."
  end

  def password= (new_password)
   @password = new_password if validate_password(new_password)
  end

  private

  def generate_production_number
    start_digits = rand(10000..99999)
    end_digits = rand(10000.99999)
    alphabet = ("A".."Z").to_a
    middle_digits = "2017"
    5.times { middle_digits << alphabet.sample }
    "#{start_digits}-#{middle_digits}-#{end_digits}"
  end

  def validate_password(new_password)
    new_password.is_a?(String) && new_password.length >= 6 && new_password =~ /\d/
  end                                        # if digit not found reurns nil if false, 1 if true
end

phone = Gadget.new("user", "password111")
# p phone.password

phone.password = 123
# p phone.password








# # Prefer Instance methods to instance variables
# as opposed to writing more instance variables, leverage instance methods to create new data
# and as a way to hide the behind the scenes computing/information


class BankAccount

  def initialize
    @amount = 5000
  end

  def status
    "Your bank account has a total of #{amount} dollars"
  end

  private

  def amount
    @amount / 100
  end
end

ba = BankAccount.new
p ba.status









# # Calling multiple setter methods within one method

# reset, alter more than one of our objects method variables 
# one instance method can have more than one objective


class Gadget

  attr_reader :production_number, :apps
  attr_accessor :username

  def initialize(username, password)
    @username = username
    @password = password
    @production_number = generate_production_number
    @apps = []
  end
  def to_s
    "Gadget #{@production_number} has the username #{@username}.
    It is made from the #{self.class} class and it
    has the ID #{self.object_id}."
  end
  def reset(username, password)
    self.username = username
    self.password = password
    self.apps = []
  end
  def password=(new_password)
   @password = new_password if validate_password(new_password)
  end

  private
  attr_writer :apps

  def generate_production_number
    start_digits = rand(10000..99999)
    end_digits = rand(10000.99999)
    alphabet = ("A".."Z").to_a
    middle_digits = "2017"
    5.times { middle_digits << alphabet.sample }
    "#{start_digits}-#{middle_digits}-#{end_digits}"
  end

  def validate_password(new_password)
    new_password.is_a?(String) && new_password.length >= 6 && new_password =~ /\d/
  end                                        # if digit not found reurns nil if false, 1 if true
end

phone = Gadget.new("user", "password111")
p phone
phone.reset("username", "password")
p phone








# # structs

# less fucntionality than a class, but its basically a class with only instance variables
# structs are good for when you only need to create a framework for an object
# not for anything too complicated


module AppStore

  App = Struct.new(:name, :developer, :version)

  APPS = [
    App.new(:chat, :facebook, 2.0),
    App.new(:Twitter, :twitter, 5.8),
    App.new(:Weather, :yahoo, 10.15)
  ]
  def self.find_app(name)
    APPS.find { |app| app.name == name}
  end

end








# # Class variables and class methods


# an attribute or a method that we send to a class


# CLASS VARIABLES
# a way to attach a class and its information to an object
# a class variable belongs to the whole class rather than an object
# clas variables store information that does not pertain to an instance
# start with @@ sigil

# CLASS METHODS
# a class method is available on the class rather than the instance
# Class methods contain functionality that does not involve one instance
# a class method can be called even if objects/ instances do not exist
# the new method that we call upon a class to create an object is an example of a class method
# class methods are prefixed with the self keyword


class Bicycle
  @@maker = "BikeTech"
  @@count = 0 

  def self.description
    "Hi there, Im the blueprint for Bicycles! Use me to create a Bicycle object"
  end

  def self.count
    @@count
  end

  def maker
    @@maker
  end

  def initialize
   @@count += 1 
  end
end

p Bicycle.description
p Bicycle.count

GnarGnar3000 = Bicycle.new
p GnarGnar3000.maker
p Bicycle.count
p ""





