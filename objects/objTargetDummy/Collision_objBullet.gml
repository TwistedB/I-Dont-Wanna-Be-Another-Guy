
if(regen < 0)
{
	hp -= other.dmg / def;
	regen = maxRegen;
	image_blend = c_red;
	audio_play_sound(sndBossHit, 0, 0);
	var dmgCounter = instance_create_depth(x, y-sprite_height/2, -1, objDamageAmount);
	dmgCounter.damageAmount = other.dmg;

}