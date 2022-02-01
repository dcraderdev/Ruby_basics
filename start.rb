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




