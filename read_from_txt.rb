



# # INTRO TO FILE INPUT AND OUPUT





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

# and we get....

# Class
# Great American Novel
# by Donovan Crader

# Chapter 1
# It was all good just a week ago...

