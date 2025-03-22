if (keyboard_check_pressed(vk_escape))
{
    global.gamePaused = !global.gamePaused;
    
    if (global.gamePaused)
{
    with (all)
    {
        if (id != o_player)  // Exclude the player object from deactivation
        {
            gamePausedImageSpeed = image_speed;
            image_speed = 0;
        }
    }
}

 if (!global.gamePaused)
	{
    with (all)
		{
        if (id != o_player)  // Exclude the player object from reactivation
			{
            image_speed = gamePausedImageSpeed;
			}
		}
	}}