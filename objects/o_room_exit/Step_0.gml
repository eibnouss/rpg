if (instance_exists(o_player)) && (position_meeting(o_player.x,o_player.y,id)){
global.targetRoom = targetRoom;
global.targetX = targetX;
global.targetY = targetY;
global.targetdirection = o_player.direction;
room_goto(targetRoom);
instance_destroy();
} 