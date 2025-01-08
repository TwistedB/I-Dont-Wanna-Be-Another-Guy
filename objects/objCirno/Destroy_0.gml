if(destroySound = true)
{
	with(objCherry)
	{
		instance_destroy();
	}
	
	with(objCurvingCherry)
	{
		instance_destroy();
	}
	
	stop_music();
	activate_trigger("BossDefeat");
}