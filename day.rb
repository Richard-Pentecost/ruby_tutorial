require 'date'

def day_of_the_week(time) 
  Date::DAYNAMES[time.wday]
end

def greeting(time)
  "Hello Richard! Happy #{day_of_the_week(time)}. Hope you're well"
end