if (instance_exists(follow)){
xTo = follow.x;
yTo = follow.y;
}

x += (xTo - x)/15;

y += (yTo - y)/15;

x = clamp(x,viewWidthHalf,room_width-viewWidthHalf);
y = clamp(y,viewHeightHalf,room_height-viewHeightHalf);

x += random_range(-shakeremain,shakeremain);
y += random_range(-shakeremain,shakeremain);

shakeremain = max(0,shakeremain-((1/shakeLength)*shakemagnitude));

camera_set_view_pos(cam,x-viewWidthHalf,y-viewHeightHalf);