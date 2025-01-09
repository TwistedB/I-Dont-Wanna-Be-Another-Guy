if(destroySound = true)
{
	with(objCherry)
	{
		instance_destroy();
	}
	
	if(instance_exists(objPlayer) && global.items[$ "secrets"][0] = false)
	{
		instance_create_depth(objPlayer.x, objPlayer.y, 0, objItemSecret1);
	}
	
	with(objCurvingCherry)
	{
		instance_destroy();
	}
	
	stop_music();
	activate_trigger("BossDefeat");
}