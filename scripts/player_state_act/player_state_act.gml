// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_state_act(){
player_animation_sprite();
if (animation_end){
state = player_state_free;
animation_end = false;
if (animation_end_script != -1){
script_execute(animation_end_script);
animation_end_script = -1;
}
}
}