if(is_active_trigger("BWAH"))
{
	visible = true;
	audio_play_sound(sndExplosion, 0, 0);
	deactivate_trigger("BWAH");
}

if(instance_exists(objPlayer))
{
	image_index = 0;
}else
{
	if(image_index > 2)
	{
		instance_destroy();
	}
}