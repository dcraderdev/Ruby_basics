





# # REGULAR EXPRESSIONS

# can be used to extract sub-strings out of strings based on certain criteria
# i.e such as pulling numbers from a phone book. All numbers are similar so we can looks similar patterns
# and use those to extract our sub strings 













# # REGULAR EXPRESSIONS START ON LINE 214

# # practice problems / review

# # the .start_with? and .end_with? methods



phrase = "The Ruby Programming Language is amazing!"
puts phrase.start_with?("The")
# true
# case sensitive
# .start_with? is a predicate method(boolean) so its going to return a true/false
# when checking if string starts with our parameters/argument

phrase = "The Ruby Programming Language is amazing!"
puts phrase.end_with?("amazing")
# false - there is a ! at the end
# case sensitive
# .end_with? is a predicate method(boolean) so its going to return a true/false
# when checking if string starts with our parameters/argument

# we can ensure a good 'search ' by doing something like .downcase on our string
# for that query
puts phrase.downcase.start_with?("the")








# ... my research lol

# my thought process....
# does string contain word
# does first letter of query exist at [0] in string
# does second letter of query exist at [1] etc... 

# phrase = "The Ruby Programming Language is amazing!"
# search = "amaz"
# p phrase_arr = phrase.split
# p phrase_arr.join(" ")
# p search.length
# p phrase_arr.first()
# p phrase_arr.last()


# return true if the substring is found at the
# beginning of string; false otherwise

phrase = "The Ruby Programming Language is amazing!"
search = "The"

def custom_start_with?(string, substring) 
  if string.include?(substring) && string.slice(0..substring.length-1) == substring 
    puts "Wow it is!"
  elsif string.include?(substring) || string.slice(0..substring.length-1) == substring
    puts "No, but that's in there somewhere else."
  else 
    puts "Not found at all"
  end
end

custom_start_with?(phrase, search)



# Jesus... this is all BORIS put for what I solved above ^^

def custom_start_with?(string, substring)
  string.slice(0..substring.length-1)
end

custom_start_with?(phrase, search)

# so sleeeeek, so sexyyyyy, so efficient


phrase = "The Ruby Programming Language is amazing!"
search = "The"

def custom_start_with?(string, substring) 
  if string.include?(substring) && string.slice(0..substring.length-1) == substring 
    puts "Wow it is!"
  elsif string.include?(substring) || string.slice(0..substring.length-1) == substring
    puts "No, but that's in there somewhere else."
  else 
    puts "Not found at all"
  end
end

custom_start_with?(phrase, search)

# return true if the substring is found at the 
# end of string; false otherwise
phrase = "The Ruby Programming Language is amazing!"
search = "ing!"

def custom_end_with?(string, substring)
  if string.include?(substring) && string.slice(-substring.length..-1) == substring 
    puts "Wow it is!"
  elsif string.include?(substring) || string.slice(-substring.length..-1) == substring
    puts "No, but that's in there somewhere else."
  else 
    puts "Not found at all"
  end
end

custom_end_with?(phrase, search)


# research...
# phrase = "The Ruby Programming Language is amazing!"
# search = "The"
# p phrase[0, search.length] == substring
# p phrase.slice(0..search.length-1)
# p phrase.slice(0..search.length-1) == phrase[0, search.length]

# research...
# does string contain word
# does first letter of query exist at [0] in string

# p substring = "asdf"
# p string = "asdfasdf adsf asdfasdfasdf adsf asdfasdfasdf adsf asdf"
# p string[string.length]
# p string[3..-1]


# p string.slice(-substring.length..-1)
# p substring.length









# # the .include? method            


phrase = "The Ruby Programming Language is amazing!"
search = "ing!"

puts phrase.include?("Ruby")
# true

p 40 > 100 ? "Greater than" : "Less than"
# Less than








# #  return true if the search is found anywhere within the string

phrase = "The Ruby Programming Language is amazing!"
search = "ing!"

def custom_include?(string, substring)
  len = substring.length
  string.chars.each_with_index do |letter, index|
     return true if string[index, len] == substring
  end
  false
end

p custom_include?(phrase, search)














# # INTRO TO REGULAR EXPRESSIONS 

# Just another object
# used to match patterns in strings
# the class is Regexp
# created wtih (//) syntax
# then condition is placed between the //










# # Find first occurance

# The =~ syntax will return the index position of the first match
#  string =~ //

p //.class
# Regexp

phrase = "The Ruby Programming Language is amazing!"
search = "ing!"

p phrase =~ /T/
# 0
# we get 0 returned because the first T is at [0]

p phrase =~ /!/
# 40
# we get 40 returned because the first ! is at [40]

p phrase =~ /Ruby/
# 4
# we get 4 returned because the first ! is at [4]

p phrase =~ /x/
# nil
# nil beacuse there is no x in the string

p phrase =~ /./
# [0]
# the . means return any value
# so this translates to give us the first occurance of any character

p phrase =~ /Rubyrubyrubyruby.doyadoyadoya/
# nil
# We can use multiple characters inside the //
# ruby will return the array of the first character searched for
# as long as all characters are found
# nil if not found









# # The .scan method

voicemail = "I can be reached at aaaaaa 555-4545-5555 or address@gmail.com"

p voicemail.scan(/re/)
# ["re", "re"]
# returns an array of all the occurances of /re/
p voicemail.scan(/re/).length.class
# 2  Fixnum
# we can call .length on top of .scan to 
# return how many times /re/ is found
# as a Fixnum
p voicemail.scan(/[re]/)
# ["e", "r", "e", "e", "r", "r", "e"]
# returns an array of each different occurance of either r or e, in order
# case sensitive
p voicemail.scan(/[Rre]/)
# but if we want to search for both put 
# both the capital and lowercase letter together in /search/
p voicemail.scan(/\d/)
# return an array of any single digit
# the \d is a special command
voicemail = "I can be reached at aaaaaa 555-4545-5555 or address@gmail.com"
p voicemail.scan(/\d+/)
# ["555", "4545", "5555"]
# will retrun us an array of the digits and 
# any time a digit proceeds another digit
# it will be include in the index together
p voicemail.scan(/\D/)
# []
# returns an array of anything thats not a digit
p voicemail.scan(/\s/)
# [" ", " ", " ", " ", " ", " ", " ", " "]
# returns an array of anything thats white space
p voicemail.scan(/\S/)
# ["I", "c", "a", "n", "b", "e", "r", "e", "a", "c", "h", "e", "d", "a", "t", "a",
#  "a", "a", "a", "a", "a", "5", "5", "5", "-", "4", "5", "4", "5", "-", "5", "5",
#  "5", "5", "o", "r", "a", "d", "d", "r", "e", "s", "s", "@", "g", "m", "a", "i",
#  "l", ".", "c", "o", "m"]
# returns an array of anything thats not a white space

voicemail = "I can be reached at aaaaaa 555-4545-5555 or address@gmail.com"
def pull_num_arr(entire_arr)
  new_str = ""
  num_arr = entire_arr.scan(/\d+/)
  new_str << num_arr.join("-")
  puts "We had a listing :  #{entire_arr}"
  puts "Transformed it into an array #{num_arr}"
  puts "And now we're displaying a string : #{new_str}"
end

pull_num_arr(voicemail)

# We had a listing :  I can be reached at aaaaaa 555-4545-5555 or address@gmail.com
# Transformed it into an array ["555", "4545", "5555"]
# Oh yeahhh, and now we're displaying a string : 555-4545-5555


# voicemail.scan(/\d+/) { |digit_match| puts "#{digit_match}" }
# p digit_match.class
# { |digit_match| puts "#{digit_match}" }











# # The Wildcard Symbol

# Basically used to indicate any character

phrase = "The Ruby Programming Language is amazing and awes inspiring!"
puts phrase.scan(/.am/)
# ram
#  am
# returns an array of occurances where 'any character' is followed by 'am'
# and returns the 3
phrase = "The Ruby Programming Language is amazing and awes inspiring!"
puts phrase.scan(/...am/)
# ogram
#  is am
# can return multiple 'anycharacter' symbols
# we can use the . in any position within the //
# to adjust our search










# # The Backslash Character   \ 


# used to look for the characters that have special use 
# cases within these methdos
paragraph = "This is my essay. I deserve an A. I rank it 5 out of 5."

puts paragraph.scan(/\./)
# .
# .
# .
puts paragraph.scan(/\d/)












