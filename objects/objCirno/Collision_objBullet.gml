if(regen < 0)
{
	hp -= 1;
	regen = maxRegen;
	image_blend = c_red;
	audio_play_sound(sndBossHit, 0, 0);
	
	if(instance_exists(objPlayer))
	{
		if(objPlayer.y < 400 || canInstaKill = false)
		{
			for (var i = 0; i < 10; i += 1)
			{
			   var spike = instance_create_depth(0+(32*i), 0, depth + 1, objSpikeDown)
			   spike.vspeed = 4;
			}
	
			for (var i = 0; i < 10; i += 1)
			{
			   var spike = instance_create_depth(480+(32*i), 0, depth + 1, objSpikeDown)
			   spike.vspeed = 4;
			}
		}else if(objPlayer.y >= 400 && canInstaKill = true)
		{
			for (var i = 0; i < 30; i += 1)
			{
			   var spike = instance_create_depth(0+(32*i), 0, depth + 1, objSpikeDown)
			   spike.vspeed = 4;
			}		
		}
	}
}