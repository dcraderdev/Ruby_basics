# # Command Line Arguments

# basically programs that run through ruby whenever 
# commands are given from the terminal/command line

ARGV.each do |argument|
  number = argument.to_i
  puts "The square of #{number} is #{ number ** 2 }"
end

# this can opened up in the terminal
