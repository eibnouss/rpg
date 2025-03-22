// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/*function player_act_out(sprite,end_script = -1){
state = player_state_act;
sprite_index = sprite;
if(end_script != -1) animation_end_script = end_script;
local_frame = 0;
image_index = 0;
player_animation_sprite();
}*/
function player_act_out(){
var _sprite = argument0;
var _end_script = argument1;
state = player_state_act;
sprite_index = _sprite;
if(argument_count > 1) animation_end_script = _end_script;
local_frame = 0;
image_index = 0;
player_animation_sprite();
}