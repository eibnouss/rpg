// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function new_textbox(){
var obj;
if (instance_exists(o_textbox)) obj = o_textqueue; else obj = o_textbox;
with (instance_create_layer(0,0,"instances",obj)) {
		message = argument[0];
		if (instance_exists(other)) originInstance = other.id; else originInstance = noone;
		if (argument_count > 1) background = argument[1]; else background = 1;
		if (argument_count > 2){
var _array=argument[2];

for(var _i=0;_i<array_length(_array);_i++)
{
 response[_i]=_array[_i];
}
		for (var i = 0;i < array_length(response);i++){
			var markerPosition = string_pos(":",response[i]);
			responseScript[i]=string_copy(response[i],1,markerPosition - 1);
			responseScript[i]=real(responseScript[i]);
			response[i]=string_delete(response[i],1,markerPosition);
			breakpoint = 10
			}
		}else{
		response = [-1];
		responseScript = [-1];
		}
	}

	with (o_player) 
	{
		if (state != player_state_block)
		{
			lastState = state;
			state = player_state_block;
		}
	}
}