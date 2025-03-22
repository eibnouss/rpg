// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_state_roll() 
{
// movement
hspeed_ = lengthdir_x(speed_roll_,direction);
vspeed_ = lengthdir_y(speed_roll_,direction);
movedistanceremaning = max(0,movedistanceremaning-speed_roll_);
var _collided = player_collision();
// update sprite
sprite_index = sprite_roll;
var _totalframes = sprite_get_number(sprite_index)/4;
image_index = (CARDINAL_DIR*_totalframes)+min((1-(movedistanceremaning/distance_roll))*_totalframes,_totalframes-1);
// change state
if (movedistanceremaning <= 0){
state = player_state_free;

}

}
