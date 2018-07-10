require 'pry'

def clock_angle(time)
    hour = time.split(":")[0].to_f
    minute = time.split(":")[1].to_f
    hour_angle = hour * 30 + minute * 0.5
    minute_angle = minute * 6
    angle_diff = (minute_angle - hour_angle).abs
    if (minute_angle - hour_angle).abs > 180
    	(minute_angle - hour_angle).abs % 180
    else
    	angle_diff
    end 
end