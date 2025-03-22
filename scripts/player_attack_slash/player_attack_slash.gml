function player_attack_slash(){
	if (hitbyattack == -1){
	hitbyattack = ds_list_create();
	}
if (sprite_index != s_player_attackslash){
sprite_index = s_player_attackslash;
local_frame = 0;
image_index = 0;
if (!ds_exists(hitbyattack,ds_type_list)) hitbyattack = ds_list_create();
ds_list_clear(hitbyattack);
}

calc_attack(s_player_attackslashHitBox)
player_animation_sprite();
if(animation_end){
state = player_state_free;
animation_end = false;
}
}