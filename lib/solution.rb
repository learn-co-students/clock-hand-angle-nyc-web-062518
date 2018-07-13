def clock_angle(time)
  split_time = time.split(":")
  hour = split_time[0].to_i
  minutes = split_time[1].to_i
  if hour == 12
    hour = 0
    angle = ((hour * 30) - (minutes * 0.5)) - (minutes * 6)
    angle.abs
  elsif hour <= 6
  angle = ((hour * 30) - (minutes * 0.5)) - (minutes * 6)
  angle.abs
  elsif hour > 6 && minutes >= 30
    angle = ((hour * 30) + (minutes * 0.5)) - (minutes * 6)
    angle.abs
  elsif hour > 6 && minutes < 30
    hour = hour - 6
    angle = ((hour * 30) - (minutes * 0.5)) - (minutes * 6)
    angle.abs
  end
end
