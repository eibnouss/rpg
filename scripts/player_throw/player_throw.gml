// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_throw(){
with(global.iLifted){
lifted = false;
persistent = false;
thrown = true;
z = 13;
throwpickHeight = z+10;
throwdistance = entity_throw_distance;
throwdistanceTraveled = 0;
throwstartPercent = (13/throwpickHeight)*0.5;
throwPercent = throwstartPercent;
direction = other.direction;
xstart = x;
ystart = y;
}
player_act_out(s_playerLift);
global.iLifted = noone;
}