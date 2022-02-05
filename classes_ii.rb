



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
  
  def password=(new_password)
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
p phone.password

phone.password = 123
puts phone.password















