// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_animation_sprite(){
var cardinal_direction = round(direction/ 90);
var total_frames = sprite_get_number(sprite_index)/4;
image_index = local_frame+(cardinal_direction*total_frames);
local_frame += sprite_get_speed(sprite_index)/FRAME_RATE;

if (local_frame >= total_frames){
animation_end = true;
local_frame -= total_frames;
}
else animation_end = false;
}