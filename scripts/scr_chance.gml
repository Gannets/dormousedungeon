///scr_chance(percentage)
var percent = argument[0]; // between 0 and 1
percent = clamp(percent, 0, 1); 
return (random(1) < percent); // return a value between 0 - 0.99 never greater than or equal to 1

