

# # monkey_patching

# modifying or adding features to a  predefined class
# later reoping and adding instance methods for example
# you can even make changes to built in classes



# lets say we want to modify the array class
# be careful because you can overwrite the functionality of methods within that 
# class if you use the same variable name


class Array

  def sum
      total = 0
      self.each { |element| total += element if element.is_a?(Numeric) }
      total
  end

end

p [1, "Hello", 2, 3].sum


# very single character in alphabet is mapped to its array # in alphabet
# then take sum of arguments 

class String

  def alphabet_sum
    alphabet = ("a".."z").to_a
    sum = 0

    self.downcase.each_char do |character|
      if alphabet.include?(character)
        numeric_value = alphabet.index(character) + 1 
        sum += numeric_value
      end
    end
    sum
  end
end


puts "abcd".alphabet_sum
puts "1abcd".alphabet_sum
puts "!!!".alphabet_sum










# # more_monkey_patching


class Hash
  def indentify_dup_values
    values = []
    dupes = []
    self.each_value { |value| values.include?(value) ? dupes << value : values << value }
    dupes.uniq
  end
end


scores = {a: 101, b: 100, c: 83, e: 13, f: 6, g: 100, h:13}
p scores
p scores.indentify_dup_values



class Fixnum

  def seconds
    self
  end

  def minutes
    self * 60
  end

  def hours
    self * 60 * 60
  end

  def days
    self * 60 * 60 * 24
  end

end


puts Time.now
puts Time.now + 30.minutes





class Fixnum

  def custom_times
    i = 0
    while i < self 
      yield(i + 1)
      i += 1
    end
  end
end


a = 5
10.times { |a| puts a }
10.custom_times { |a| puts a }







# # more_monkey_matching



class Book

  def initialize(title, author, pages)
    @title = title
    @author = author
    @pages = pages
  end
end

goosebumps = Book.new("Night of the Living Dummy", "R.L. Stine", 100)
p goosebumps


class Book
  
  def read
    1.step(@pages, 10) { |page| puts "Read page #{page}..."}
    puts "Done! #{@title} was a great book!"
  end
end

animal_farm = Book.new("Animal Farm", "George Orwell", 50)
p animal_farm.read

p goosebumps.read






