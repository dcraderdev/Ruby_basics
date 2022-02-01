



# # INTRO TO FILE INPUT AND OUPUT

# this file uses the following files:
# start.rb
# end.rb
# command_line_arguments.rb
# novel.txt



# # read from a txt file with .rb

# created new txt file named novel.txt


p File.class 
# It is a file class
# not sure why we get 'Class' returned here

book = File.open("novel.txt").each do |line|
  puts line
end

# we can open the txt doc with this method
# we feed it the file name
# this will parse the contents of the file as elements within an array

# book = File.open("novel.txt").each do |line|
# there is an invisible second argument "r" which means read
# it would go in the ()   =>  book = File.open("novel.txt", "r").each do |line|



# and we get....

# Class
# Great American Novel
# by Donovan Crader

# Chapter 1
# It was all good just a week ago...










# # Write to a txt file with .rb

# this one also has a second argument but we need to include it to write to a txt file from .rb
# the second argument is "w" for write
# we can use a file name that doesnt exist so it will create the file for us

book = File.open("myFirstFile.txt", "w") do |file|
  file.puts "I'm creating this from Ruby!"
  file.write "No line break here!"    # this does not add a line break
  file.puts "Pretty cool!"
end

# its now created the new file and inserted the text
# we can see the new file under the tab 'source code'

# if a file already exists with this name
# anything we put in here will overwrite whatever is in that file










# # rename a file with .rb

# expects two arguments: the name of the file being renamed and the new name

File.rename("myFirstFile.txt", "FileNewName.txt")
# bye bye myFirstFile.txt
# hello FileNewName.txt









# # delete a file with .rb

# only needs the file name

File.delete("FileNewName.txt")
# bye bye FileNewName.txt

# this works ok but...
# will return error if the file has already been deleted so
# to avoid errors we can use a method to protect from this

if File.exist?("FileNewName.txt")
  File.delete("FileNewName.txt")
end










# # Command Line Arguments

# basically programs that run through ruby whenever 
# commands are given from the terminal/command line

ARGV.each do |argument|
  number = argument.to_i
  puts "The square of #{number} is #{ number ** 2 }"
end

# this can opened up in the terminal
# this is basically a way we can take information 
# from an outside source and incoprorate it into our code









# # The load method

puts "This is the beginning!"

load "end.rb"

puts "Alright, that was succesful"

load "./end.rb"
# ./ means I want to find this file in the current directory
#  we can use other syntax if we need to get access to a file in a nested directory

# wherever we use the load method it will load in whatever is in the file
# we can use it as many times throughout our ruby file as we want to pull whatever info we need


if 8 > 5
  puts "8 is greater than 5! oh no!"
  load "end.rb"
end

# since this was true, ruby loaded the 'end.rb' file 














# # the .require method

# require and require relative wont reload the document over and over
# it will load the file the one time so that the funcitonality of that file is usable
# not used for variables or things that could be eaily written or might change over time
# used for that awesome piece of code/ a great feature that you can implement in different situations


puts "This is the beginning!"

require "./end.rb"

# when using the require extension...
# require has to have the ./ 
# it always looks in the ruby directory for the file, it doesnt care what directory you are currently in
# do not have include .rb   its ok if included but not needed


require "./end.rb"
require "./end.rb"
require "./end.rb"
require "./end.rb"

# wont load the same thing over and over because that 'functionality' has already been added once
# if we need to use it again we can create a variable or something with the info it gives us










# # the .require_relative method

# require_relative is very similiar to .require except it will automatically 
# look within the same directory as the file youre working on
puts "This is the beginning!"

require_relative "end"

# we can direct which files to look through by separating file names with / / /

#                                  for example:

#                          puts "This is the beginning!"
#                          
#                          require_relative documents/coding_basics/novel.txt
#                          this is how you would list the folders you needed to navigate thru
#                          this wont work because these arent all in the same direcotry as this








