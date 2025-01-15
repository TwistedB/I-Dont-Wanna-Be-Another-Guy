if(other.bullet = true)
{
	if(regen < 0)
	{
		hp -= 4;
		regen = maxRegen;
		image_blend = c_red;
		audio_play_sound(sndBossHit, 0, 0);
	}
	instance_destroy(other);
}