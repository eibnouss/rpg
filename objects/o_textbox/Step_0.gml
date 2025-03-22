lerpProgress += (1-lerpProgress)/50;
textprogress += global.textspeed;
x1 = lerp(x1,x1target,lerpProgress);
x2 = lerp(x2,x2target,lerpProgress);

keyUp = keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up);
keyDown = keyboard_check_pressed(ord("S"))|| keyboard_check_pressed(vk_down);
responseselected += (keyDown - keyUp);
var _max = array_length(response)- 1;
var _min = 0;
if (responseselected > _max) responseselected = _min;
if (responseselected < _min) responseselected = _max;

if (keyboard_check(ord("B"))){
var messagelength = string_length(message);
if (textprogress >= messagelength){
	if (response[0] != -1){
	//with (originInstance) dialog_responces(other.responsescripts[other.responseselected])
	}
instance_destroy();
if (instance_exists(o_textqueue)){
with (o_textqueue) ticket--;

}
else{
with (o_player) state = lastState
}
}
else{
if (textprogress > 2){
textprogress = messagelength;
}
}
}