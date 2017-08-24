/// journeyLength(distance, speed, absolute);
distance = argument0;
velocity = argument1;
absolute = argument2;

//if !(is_real(distance) && is_real(velocity) && is_bool(absolute)) exit;

hours = distance/velocity;

if (absolute)
  return hours;

hours /= 24;

days     = floor(hours);
hours   -= days;
hours   *= 24;
minutes  = (hours - floor(hours))*60;
minutes  = floor(minutes);
hours    = floor(hours);

days    = string(days)+"d";
hours   = string(hours)+"h";
minutes = string(minutes)+"min";

return days+hours+minutes;
