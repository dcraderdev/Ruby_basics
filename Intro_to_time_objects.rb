






# # INTRO TO TIME OBJECTS


# time is just another object in Ruby with its own set of methods
# used to represent moments in time
# such as times, set of dates, months, etc...


# two options syntactically: Time.now, Time.new


right_now = Time.now
p right_now
# 2022-01-30 20:02:57 -0800
p right_now.class
# Time

# returns the time right now
# the class type is : Time

puts Time.new
# if we dont give it any arguments it will assume the time is NOW
# this will generate the time it is RIGHT NOW and puts it

today = Time.new
# we can assign a variable
p today
# 2022-01-30 19:59:33 -0800

p Time.new(2015)
# first argument we can provide is the YEAR
# 2015-01-01 00:00:00 -0800
# leaves everything else as if 2015 had just started without other info

p Time.new(2015, 5)
# 2015-05-01 00:00:00 -0700\
# Now we've added a month

last_april = Time.new(2020, 4, 20, 16, 20, 00 )
#   year, month, day, hour, minutes, seconds
p last_april
# 2020-04-20 16:20:00 -0700
# 4/20 blaze it









# # instance methods on time objects




today = Time.now
p today
# 2022-01-30 20:17:58 -0800

# we can extract info from the Time method:
p today.month
# 1
p today.day
# 30
p today.year
# 2022
p today.hour  # 20
p today.min   # 19
p today.sec   # 55


p today.yday
# 30
# its Jan 30, so 30 days into the year, the year we are on was specified by the variable above
# this is the number of days into the year  #/365

p today.wday
# 0
# returns the number of days we are into the week
# today is sunday, sunday is the start of the week represented with a 0
# sunday is 0, monday is 1, tuesday 2, so on...











# # predicate methods on Time objects


# seem to always return boolean values
# predicate methods always end in ?


birthday = Time.new(1992, 7, 10)
p birthday

# we can ask what day of the week of this time object is at by using:
p birthday.monday?
p birthday.tuesday?
p birthday.wednesday?   
p birthday.thursday?
p birthday.friday?      # true
p birthday.saturday?    # the rest are false
p birthday.sunday?


# there is also daylight savings time inquiry
p birthday.dst?
# true







# # add or subtract time by seconds


# 



start_of_the_year = Time.new(2016, 1, 1)
p start_of_the_year
p start_of_the_year + 60
# ruby can add time with + numerical value
# can subtract time with - numerical value
# it wants to add by seconds, so increment in seconds
p start_of_the_year + (60 * 3)
# we can be creative and multiply our seconds by a number of days, weeks, etc with ()
p start_of_the_year + (60 * 60 * 24 * 7 * 3) 
# seconds * minutes * hours * days * weeks
# this should advance us 3 weeks past our JAN 1 2016 date
# 2016-01-22 00:00:00 -0800
# this seems like a not so good method personally
# stick to jsut mulitplying by days and leave the weeks off







# # Practice Problem

# when given a certain number return what date represents that day of the year
# create a loop.... until loop
# .yday returns the numeric day of the year



def find_day_of_year_by_number(number)

  current_date = Time.new(2016, 1, 1)
  one_day = 60 * 60 * 24
  
  until current_date.yday == number
    current_date += one_day
  end
current_date
end

p find_day_of_year_by_number(150)












# # the comparable methods on a time object

# basically a combination of symbols similar to equality operations

# these objects are available across all kinds of object types

birthday = Time.new(1993, 4, 12)
summer = Time.new(2016, 6, 21)
independence_day = Time.new(2016, 7, 4)
winter = Time.new(2016, 12, 21)



puts birthday < summer
# true

p birthday  # 2016-04-12 00:00:00 -0700
p summer    # 2016-06-21 00:00:00 -0700

puts independence_day > winter

puts birthday <= Time.new(2016, 4, 12)
# is birthday less than or equal to this new time we just created



# can use predicate methods as well 
# such as between? 

puts independence_day.between?(birthday, summer)








# FAILED ATTEMPT AT MAKING AN 21+ ID CHECK


# birthday = Time.new(1993, 4, 12)
# summer = Time.new(2016, 6, 21)
# independence_day = Time.new(2016, 7, 4)
# winter = Time.new(2016, 12, 21)
# twentyone_years_ago = (Time.now - (60 * 60 * 24 * 365.2 * 21 ))


# # puts today - twentyone_years_ago 

# def id_check()
#   twentyone_years_ago = (Time.now - (60 * 60 * 24 * 365.2 * 21 ))
#   today = Time.now
#   if today - twentyone_years_ago > birthday + twentyone_years_ago
#     puts "Alright, here's your booze"
#   else
#     puts "Not today, jr.."
#   end
# end

# puts id_check(birthday)

# birthday = Time.new(1993, 4, 12)

# puts birthday.between?(twentyone_years_ago, today)

# p twentyone_years_ago

# (Time.today - (60 * 60 * 24 * 365.25 * 21 ), summer)

# puts today - twentyone_years_ago













# # Convert time objects to other objects

someday = Time.new(2000, 2, 15)
p someday.yday # number of days into the year
p someday.wday # day of the week
# its also a fixnum
puts someday.ctime.class
# this is a string
puts someday.to_s
# 2000-02-15 00:00:00 -0800
# this prints it out as a string
puts someday.ctime
# Tue Feb 15 00:00:00 2000
# a little more readable when converting time to a string

p someday.to_a
# [0, 0, 0, 15, 2, 2000, 2, 46, false, "PST"]
# seconds, minutes, hours, day, month, year, day of the week, # day of the year, .dst?, time zone
# this array gives us numeric values for all kinds of info









# # convert time object to formatted string


# check online for many more options on how we can 
# iterate certain aspects of time over a custom string


# here are some popular 'directives' or symbols 

# %b  Abbreviated month name ("Jan")
# %B  Full month name ("January")
# %d  Day of the month (1..31)
# %j  Day of the year (1..366); so-called "Julian date"
# %m  Month as a number (1..12)
# %w  Day of the week as a number (0..6)
# %x  Preferred representation for date (no time)
# %y  Two-digit year (no century)
# %Y  Four-digit year



today = Time.now
p today.strftime("%B %d, %Y")
# this is a method we can call on a time, turns it into a string
# then we choose what custom variables we want and in what order
# conveniently it replaces the variables with the data and lets us
# format how we would like with ""




