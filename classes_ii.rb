



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




















