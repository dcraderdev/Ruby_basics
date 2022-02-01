# FAILED ATTEMPTS AT MAKING AN 21+ ID CHECK

# cutoff dob is Wednesday January 31, 2001




# woo I did it

# turns out the .parse method is really good for what we've been trying to do 
# which is to take in a set of numbers in and return if they are older than 21 with a message
# pretending the clerk had to type in the customer d.o.b: month -enter, day -enter, year -enter

# after completing/making it work - im pretty sure it would have been easier to turn the current
# date into a string with the format we like (Time.now.strftime("%m-%d-%Y"))
# and then compare that to the string entered because this was a lot of conversion...
# Ill come back after another lesson or two and give way that a shot

p Time.now.strftime("%m-%d-%Y")
require 'time'
birthday = Time.new(1993, 4, 12)
cutoff = (Time.now - (60 * 60 * 24 * 365.2 * 21 ))    # 2001-02-01 15:06:10 -0800
today = Time.now



require 'time'
entry_1 = "04"          # 1st I convert our entries into a string  
entry_2 = "12"          # and then convert to a time format so we can compare with time 21 years ago
entry_3 = "1993"

dob = "#{entry_1}-#{entry_2}-#{entry_3}"        # "04-12-1993"
# dob.class                                     # String
# dob_time = Time.strptime("#{dob}", "%m-%d-%Y")  # 1993-04-12 00:00:00 -0700
# dob_time.class                                                # Time

def id_check(id)
  require 'time'
  dob_time = Time.strptime("#{id}", "%m-%d-%Y")
  cutoff = (Time.now - (60 * 60 * 24 * 365.2 * 21 ))
  if dob_time <= cutoff
    puts "ID accepted"
  else
    puts "DECLINED"
    return
  end
end

id_check(dob)








# Try not to learn too much from what's below - it all sure ain't correct







birthday = Time.new(1993, 4, 12)
summer = Time.new(2016, 6, 21)
independence_day = Time.new(2016, 7, 4)
winter = Time.new(2016, 12, 21)
twentyone_years_ago = (Time.now - (60 * 60 * 24 * 365.2 * 21 ))
today = Time.now


def id_check(id) 

end

puts id_check()



cutoff = (Time.now - (60 * 60 * 24 * 365.2 * 21 ))
dinosaurs = (Time.now - (60 * 60 * 24 * 365.2 * 1000 ))
birthday = Time.new(1993, 4, 12)


puts birthday.between? (cutoff, dinosaurs)





birthday = Time.new(1993, 4, 12)
summer = Time.new(2016, 6, 21)
independence_day = Time.new(2016, 7, 4)
winter = Time.new(2016, 12, 21)
twentyone_years_ago = (Time.now - (60 * 60 * 24 * 365.2 * 21 ))
today = Time.now

p today - twentyone_years_ago 
p today > twentyone_years_ago 
p twentyone_years_ago = (Time.now - (60 * 60 * 24 * 365.2 * 21 ))
p twentyone_years_ago.strptime
# p twentyone_years_ago
# time class
today = Time.now
# p today.class
# time class
birthday = ()
p cutoff = today - twentyone_years_ago
p cutoff.class
# float class

def id_check(id) 
  p twentyone_years_ago = (Time.now - (60 * 60 * 24 * 365.2 * 21 ))
  # p twentyone_years_ago.class
  # time class
  today = Time.now
  # p today.class
  # time class
  birthday = (id)
  cutoff = today - twentyone_years_ago
  if cutoff > birthday + twentyone_years_ago
    puts "Alright, here's your booze"
  else
    puts "Not today, jr.."
  end

end

puts id_check(birthday)

birthday = Time.new(1993, 4, 12)

puts birthday.between?(twentyone_years_ago, today)

p twentyone_years_ago

(Time.today - (60 * 60 * 24 * 365.25 * 21 ), summer)

puts today - twentyone_years_ago










p someday.to_a
# [0, 0, 0, 15, 2, 2000, 2, 46, false, "PST"]
# seconds, minutes, hours, day, month, year, day of the week, # day of the year, .dst?, time zone
# this array gives us numeric values for all kinds of info
sports = ["Baseball", nil, "Football", nil, nil, "Soccer"]

def custom_compact(array)
  final = []
  array.each { |element| final << element unless element.nil?}
  final
end

p custom_compact(sports)

p [3, 4, 5] <=> [3, 4, 5]
#0
#returns 0 because they are equal

p [3, 4, 5] <=> [3, 4, 10]
#-1
#returns -1 because right is bigger

p [3, 4, 5] <=> [3, 4, -10]
#1
#returns 1 because left is bigger


birthday = Time.new(1993, 4, 12)
summer = Time.new(2016, 6, 21)
independence_day = Time.new(2016, 7, 4)
winter = Time.new(2016, 12, 21)
twentyone_years_ago = (Time.now - (60 * 60 * 24 * 365.2 * 21 ))
today = Time.now

p birthday.before?(twentyone_years_ago)
p twentyone_years_ago
p birthday
p twentyone_years_ago.to_a
p twentyone_years_ago.to_a.class
p twentyone_years_ago.class


p twentyone_years_ago


id = ["1993", "4", "12"]
puts id.class 
d_o_b = Time.new(id)

id = ["1993", "4", "12"]
# d_o_b = ("1993, 4, 12")
id = (dob_y, dob_m, dob_d)
p id
# dob_y =
# dob_m =
# dob_d =





# # works a little...

dob = "1993"
def id_check(id)
  if (Time.now - (60 * 60 * 24 * 365.2 * 21 )) >= Time.new(id)
    puts "Alright, here's your booze."
  else 
    puts "Not today, jr.."
  end
  return
end

id_check(dob)


# Not today Jr...
dob = "1993"
p Time.now - (60 * 60 * 24 * 365.2 * 21 )
p Time.new(dob)


dob = "2001.5"

def id_check(id)

  cutoff = Time.now - (60 * 60 * 24 * 365.2 * 21 )
  one_year_away = Time.now - (60 * 60 * 24 * 365.2 * 1) 

  cutoff_arr = cutoff.to_a                    # one_year_away_arr = [49, 46, 0, 31, 1, 2021, 0, 31, false, "PST"]
  one_year_away_arr = one_year_away.to_a      # cutoff_arr        = [48, 47, 0, 1, 2, 2001, 4, 32, false, "PST"]
  
  # cutoff_arr[5.0] + (cutoff_arr[4.0]/12)


  if cutoff >= Time.new(id)  
    puts "Alright, here's your booze"
  elsif one_year_away_arr[5.0] + (one_year_away_arr[4.0]/12.0) - cutoff_arr[5.0] + (cutoff_arr[4.0]/12.0) <= 1
    puts "Close, but I'll see you within the year."
  else
    puts "Not today, jr..."
    return
  end
    

id_check(dob)

end

puts id_check(dob)
dob = 1993
def id_check(id)
  twentyone_years_ago = (Time.now - (60 * 60 * 24 * 365.2 * 21 ))
  one_year_away = (Time.now - Time.new(60*60*24*365)
  
  if twentyone_years_ago <= one_year_away
    puts "Alright, here's your booze"
  end
end

id_check(dob)


  id_str = (dob_y, dob_m, dob_d)



    puts "Alright, here's your booze"
    puts "Not today, jr.."
end

p id_check(d_o_b)



# cutoff dob is Wednesday January 31, 2001
twentyone_years_ago = Time.now - (60 * 60 * 24 * 365.2 * 21 )
p twentyone_years_ago


p 60 * 60 * 24 * 365.2 * 21
seconds, minutes, hours, day, month, year
21
12 months , 365, 

p Time.now
p Time.at(300)
# 2017-07-14 04:40:00 +0200








# turns out the .parse method is really good for what we've been trying to do 
# which is take in an set of numbers in and return if they are older than 21
# pretending the clerk had to type in the customer d.o.b: month -enter, day -enter, year -enter


require 'time'
birthday = Time.new(1993, 4, 12)
cutoff = (Time.now - (60 * 60 * 24 * 365.2 * 21 ))    # 2001-02-01 15:06:10 -0800
today = Time.now



require 'time'
entry_1 = "04"          # 1st I convert our entries into a string  
entry_2 = "12"          # and then convert to a time format so we can compare with time 21 years ago
entry_3 = "1993"

dob = "#{entry_1}-#{entry_2}-#{entry_3}"        # "04-12-1993"
# dob.class                                     # String
# dob_time = Time.strptime("#{dob}", "%m-%d-%Y")  # 1993-04-12 00:00:00 -0700
# dob_time.class                                                # Time

def id_check(id)
  require 'time'
  dob_time = Time.strptime("#{id}", "%m-%d-%Y")
  cutoff = (Time.now - (60 * 60 * 24 * 365.2 * 21 ))
  if dob_time <= cutoff
    puts "Alright, you're old enough, here's your booze"
  else
    puts "Not today, jr..."
    return
  end
end

id_check(dob)

# ----------------

def id_check(id)

  cutoff = Time.now - (60 * 60 * 24 * 365.2 * 21 )
  one_year_away = Time.now - (60 * 60 * 24 * 365.2 * 1) 

  cutoff_arr = cutoff.to_a                    # one_year_away_arr = [49, 46, 0, 31, 1, 2021, 0, 31, false, "PST"]
  one_year_away_arr = one_year_away.to_a      # cutoff_arr        = [48, 47, 0, 1, 2, 2001, 4, 32, false, "PST"]
  
  # cutoff_arr[5.0] + (cutoff_arr[4.0]/12)


  if cutoff >= Time.new(id)  
    puts "Alright, here's your booze"
  elsif one_year_away_arr[5.0] + (one_year_away_arr[4.0]/12.0) - cutoff_arr[5.0] + (cutoff_arr[4.0]/12.0) <= 1
    puts "Close, but I'll see you within the year."
  else
    puts "Not today, jr..."
    return
  end
    

id_check(dob)