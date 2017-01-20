//computer speed
var dx = keyboard_check(vk_right) - keyboard_check(vk_left);
var dy = keyboard_check(vk_down) - keyboard_check(vk_up);
var mag = max(1,point_distance(0,0,dx,dy));
dx /= mag;
dy /= mag;

x = oWater.avgX + dx*range;
y = oWater.avgY + dy*range;
