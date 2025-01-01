if(regen < 0 && hitBy = 0 && other.iAm = 0)
{
	hp -= other.dmg / def;
	regen = maxRegen;
	image_blend = c_red;
	audio_play_sound(sndBossHit, 0, 0);
}else if (regen < 0 && hitBy != 0 && other.iAm = 0)
{
	hp -= (other.dmg / def)/5;
	if(instance_exists(objAxelShield))
	{
		objAxelShield.shieldBreak()
	}
}