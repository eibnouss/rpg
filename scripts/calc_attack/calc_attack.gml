function calc_attack(argument0){
mask_index = argument0;
var hitbyattacknow = ds_list_create();
var hits = instance_place_list(x,y,o_entity,hitbyattacknow,false);
if (hits > 0)
{
	for (var i = 0; i < hits;i++)
	{
		var hitid = hitbyattacknow[| i];
		if (ds_list_find_index(hitbyattack,hitid)== -1)
		{
			ds_list_add(hitbyattack,hitid);
			with (hitid)
			{
				if(entity_hit_script != -1) script_execute(entity_hit_script)
			}
		}
	}
}
ds_list_destroy(hitbyattacknow);
mask_index = s_player;
}