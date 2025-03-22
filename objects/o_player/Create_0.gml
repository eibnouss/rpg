state = player_state_free;
hitbyattack = -1;
stateattack = player_attack_slash();
collision_map = layer_tilemap_get_id(layer_get_id("col"));
lastState = state;
image_speed = 0;
hspeed_ = 0;
vspeed_ = 0;
speed_walk_ = 2.0;
speed_roll_ = 3.0;
distance_roll = 52;
animation_end_script = -1;
sprite_roll = s_player_roll;
sprite_run_ = s_player_run;
sprite_idle_ = s_player;
local_frame = 0;

