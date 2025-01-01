regen = maxRegen;
destroySound = true;


if(destroyIfAhead = true)
{
	if(instance_exists(objPlayer))
	{
		if(objPlayer.x > x)
		{
			destroySound = false;
			instance_destroy();
		}
	}
}