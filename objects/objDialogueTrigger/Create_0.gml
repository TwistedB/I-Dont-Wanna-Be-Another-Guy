if(destroyIfAhead = true)
{
	if(instance_exists(objPlayer))
	{
		if(objPlayer.x > x+sprite_width)
		{
			instance_destroy();
		}
	}
}