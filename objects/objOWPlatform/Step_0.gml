if(instance_exists(objPlayer))
{
	if(objPlayer.y < y-4)
	{
		mask_index = sprMovingPlatform;
	}else
	{
		mask_index = sprEmpty;
	}
}