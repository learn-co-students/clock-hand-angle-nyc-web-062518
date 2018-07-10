def clock_angle(time)
    # code your solution here
    time_array = time.split(':')
    hour = time_array[0].to_f
    minute = time_array[1].to_f
    if hour == 12
      hour = 0
    end
    hour_degree = (hour * 30) + (minute * 0.5)
    minute_degree = minute * 6
    diff = hour_degree - minute_degree
    output = 360 - diff.abs
    if diff.abs < output
      diff.abs
    else
      output
    end
end
