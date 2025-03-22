function player_state_free() 
{
// movement
hspeed_ = lengthdir_x(inputMagnitude*speed_walk_,inputDirection);
vspeed_ = lengthdir_y(inputMagnitude*speed_walk_,inputDirection);

player_collision();

// update sprites index
var old_sprites = sprite_index;
if (inputMagnitude != 0)
{
	direction = inputDirection;
	sprite_index = sprite_run_;
}
else sprite_index = sprite_idle_;
if (old_sprites != sprite_index) local_frame = 0;

player_animation_sprite();
if (keyAttack)
{
	state = player_state_attack;
	stateAttack = player_attack_slash;
}
// change state
if (keyActivate)
	{
	var _activatex = lengthdir_x(10,direction);
	var _activatey = lengthdir_y(10,direction);
	activate = instance_position(x+_activatex,y+_activatey,o_entity);
	if (activate == noone or activate.entity_activate_script == -1)
		{
			if(global.iLifted != noone)
			{
				//player_throw();
			}else
			{
				state = player_state_roll;
				movedistanceremaning = distance_roll;
				//player_throw();
			}
		}
else
		{
			
			script_execute_array(activate.entity_activate_script,activate.entity_activate_args);
			if (activate.entity_npc)
			{
				with (activate)
				{
					direction = point_direction(x,y,other.x,other.y);
					image_index = CARDINAL_DIR
				}
			}
		}
	}
}