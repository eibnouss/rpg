// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function screen_Shake(magnitude,frames){
with (global.icamera){
if (magnitude>shakeremain){
shakemagnitude = magnitude;
shakeremain = shakemagnitude;
shakeLength = frames;
}
}
}