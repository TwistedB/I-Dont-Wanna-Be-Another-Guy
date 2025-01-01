if(destroySound = true)
{
	audio_play_sound(sndDeath, 0, 0);
	var BCD = instance_create_layer(x, y, layer, objBallCatDeath);
	BCD.myDir = deathFrom;
}