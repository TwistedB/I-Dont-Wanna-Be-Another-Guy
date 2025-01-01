if(regen < 0 && hitBy = 1)
{
	hp -= other.dmg / def;
	regen = maxRegen;
	image_blend = c_red;
	audio_play_sound(sndBossHit, 0, 0);
}else if (regen < 0 && hitBy != 1)
{
	hp -= (other.dmg / def)/5;
	regen = maxRegen;
	if(instance_exists(objAxelShield))
	{
		objAxelShield.shieldBreak()
	}
}