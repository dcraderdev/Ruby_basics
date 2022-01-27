
# STRING_STUFF



# the_insert_method_on_a_string

typo = "GeorgWashington"

typo.insert(5, "e ")
# first parameter is @ which index pos. to insert the character
    # can use a negative to start from back
# secnd parameter is what to put @ index pos specified

p typo
# "George Washington"


# the_squeeze_method_on_a_string

sentence = "Thhe aarvark jummped   ovver the fence!"
puts sentence.squeeze
# The arvark jumped over the fence!
#this method removes any duplicate characters in a row.


sentence = "Thhe aarvark jummped   ovver the fence!"
puts sentence.squeeze(" ")
# Thhe aarvark jummped ovver the fence!
# can specify which double characters to eliminate by placing parameters
# this will make method ignore all the other doubles


sentence = "Thhe aarvark jummped   ovver the fence!"
puts sentence.squeeze!("h ")
# can add a bang to the method which will remover all dupliactes except for



sentence = "Thhe aarvark jummped   ovver the fence!"

def custom_squeeze(string)
    final = ""
    chars = string.split("")
    chars.each_with_index do |char, index|
        if char == chars[index + 1]
            next
        else
            final << char
        end

    end
    final

end

p custom_squeeze(sentence) #"The arvark jumped over the fence!"

#           REFACTORED

sentence = "Thhe aarvark jummped   ovver the fence!"

def custom_squeeze(string)
    final = ""
    chars = string.split("")
    chars.each_with_index do |char, index|
        char == chars[index + 1] ? next : final << char
    end
    final

end

p custom_squeeze(sentence) #"The arvark jumped over the fence!"



# the .clear method_on_a_string

p "Blah blah blah".clear
# ""
# we get back "" as a result
# will permanently modify a variable 

word = "goodbye"
p word
# ""goodbye"
word.clear
p word
# ""


# the_.delete_method_on_a_string

puts "Hello world".delete("ldr")
# deletes the paramaters set in the parethensese
# characters do not have to be separated or in order, everything gets deleted
# case sensitive

def custom_delete(string, delete_characters)
    new_string = ""
    string.each_char do |char|
        unless delete_characters.include?(char)
            new_string << char
        end
    end
    new_string
end

puts custom_delete("Hello world", "ldr")
























































































































