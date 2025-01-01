if(destroyIfAhead = true)
{
	if(instance_exists(objPlayer))
	{
		if(objPlayer.x > x)
		{
			instance_destroy();
		}
	}
}