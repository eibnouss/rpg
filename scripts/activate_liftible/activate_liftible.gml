// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function activate_liftible(id){
if(global.iLifted == noone){
player_act_out(s_playerLift);
global.iLifted = id;
with(global.iLifted){
lifted = true;
persistent = true;
}
}
}