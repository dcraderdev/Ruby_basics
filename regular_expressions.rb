





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
[".", ".", "."]
p paragraph.scan(/\./).class
puts paragraph.scan(/\./).class
# .
# .
# .
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











# # RegEx Anchors in Ruby

# an anchor is a specific symbol that ties a match to a specific
# point within a certain string
# for example, strictly the end of a string or at the beignning

poem = "99 bottles of beer on the wall, 99 bottles of beer"

p poem.scan(/\d+/)
# ["99", "99"]
# This will return an array of any and all occurances 
# of a digit or any digit following more digits int he .scan method
p poem.scan(/\A\d+/)
# ["99"]
# adding this \A returns any digit or digits following more digits
# but only at the start of the string that the .scan method is called on
p poem.scan(/\d+\z/)
# []
# adding this \z returns any digit or digits following more digits
# but only at the end of the string that the scan method is called on
# has to be placed at the end of the .scan method










# # Regex characters to exclude characters

# Say we wanted to return all constanants in this string
# We can do it all in once line but it is shown step by step

sales = "I bought 9 apples 25 bananas and 4 oranges at the store"
p sales.scan(/[^ ]/)
# we can use the ^ to exclude what we dont want to
# include in our .scan method
p sales.scan(/[^aeiou]/)
# ["I", " ", "b", "g", "h", "t", " ", "9", " ", "p", "p", "l", "s", " ", "2", "5", " ", "b", "n", "n", "s", " ", "n", "d", " ", "4", " ", "r", "n", "g", "s", " ", "t", " ", "t", "h", " ", "s", "t", "r"]
#case sensitive so it did not remove the I at the beginning
p sales.scan(/[^aeiouAEIOU]/)
p sales.scan(/[^aeiou\s]/)
# we can use \s to remove any spaces
p sales.scan(/[^aeiouAEIOU,\s]/)
# a , to remove commas
p sales.scan(/[^aeiouAEIOU\s\d]/)
# \d to remove digits
p sales.scan(/[^aeiouAEIOU\s\d\.]/)
# \. at the end to remove periods
p sales.scan(/[^aeiouAEIOU\s\d\.]/).length
# 24










# # the .sub and .gsub methods

# Used in Regular Expressions in order to find and replace 
# certain sub strings within other strings


puts "whimper".sub("m", "s")
# first argument is what to sub out
# second arument is what to sub in
# only replaces the first occuarance of the thing searched for
puts "wordplay".sub("word", "sword")
# swordplay
# we can add multiple characters in the search
word = "aspirin"
puts word.sub("in", "ing")
# aspiring
puts word
# aspirin
puts word.sub!("in", "ing")
puts word
# aspiring
# can make perm with !
puts "an apple".gsub("a", "-")
# -n -pple
# .gsub replaces every occurance of the first argument with the second argument
puts "555-444-5454".gsub(/[-\s\(\)]/, "")
# 5554445454
# .gsub replaces every occurance of the first argument with the second argument
# leave second field blank to replace with nothing













