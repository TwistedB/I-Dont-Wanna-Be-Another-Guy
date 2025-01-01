if(regen < 0)
{
	hp -= other.dmg / def;
	regen = maxRegen;
	image_blend = c_red;
	audio_play_sound(sndBossHit, 0, 0);
}