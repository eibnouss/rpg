if (!global.gamePaused)
{
	depth = -bbox_bottom;
	flash = max(flash-0.04, 0);
	
	switch state
	{
		case STATES.LIFTED:
			if (instance_exists(o_player) && o_player.sprite_index != s_playerLift)
			{
				x = o_player.x;
				y = o_player.y;
				z = 13;
				depth = o_player.depth - 1;
			}
		break;
		
		case STATES.THROWN:
			throwDistanceTravelled = min(throwDistanceTravelled + throwSpeed, entity_throw_distance);
			throwPercent = throwStartPercent + (1 - throwStartPercent) * (throwDistanceTravelled / entity_throw_distance);
			z = throwPeakHeight * sin(throwPercent * pi);
			
			if (!thrownCollision)
			{
				hspeed = lengthdir_x(throwSpeed, direction);
				vspeed = lengthdir_y(throwSpeed, direction);
				thrownCollision = TileCollision();
			}
			
			if (z == 0)
				state = STATES.LANDED;
		break;
		
		case STATES.LANDED:
			state = STATES.DEFAULT;
			thrownCollision = false;
			
			if (entityThrowBreak)
				instance_destroy();
			else
			{
				entityCollision = true;
				entityActivateScript = ActivateLiftable;
			}
		break;
	}
}

function TileCollision()
{
	var collision = false;
	
	if (tilemap_get_at_pixel(collisionMap, x+hspeed, y))
	{
		x -= x mod TILE_SIZE;
		if (hspeed > 0) x += TILE_SIZE - 1;
		spd = 0;
		collision = true;
	}
	else
		x += hspeed;
	
	if (tilemap_get_at_pixel(collisionMap, x, y+vspeed))
	{
		y -= y mod TILE_SIZE;
		if (vspeed > 0) y += TILE_SIZE - 1;
		spd = 0;
		collision = true;
	}
	else
		y += vspeed;
	
	return collision;
}

function ActivateLiftable(id)
{
	if (global.iLifted == noone)
	{
		PlayerActOutAnimation(s_playerLift);
		global.iLifted = id;
		
		with (global.iLifted)
		{
			state = STATES.LIFTED;
			persistent = true;
			entityCollision = false;
			entityActivateScript = -1;//This fixes not being able to throw upwards. The pot blocked the ability to throw and instead executed ActivateLiftable again because you want to throw it in the same direction as it is compared to the player.
		}
	}
}

function PlayerThrow()
{
	with (global.iLifted)
	{
		state = STATES.THROWN;
		persistent = false;
		direction = other.direction;
		z = 13;
		throwPeakHeight = z + 10;
		throwDistanceTravelled = 0;
		throwStartPercent = (13/throwPeakHeight) * 0.5;
		throwPercent = throwStartPercent;
	}
	
	PlayerActOutAnimation(s_playerLift);
	global.iLifted = noone;
}