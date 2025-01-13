if(destroySound = true)
{
	audio_play_sound(sndDeath, 0, 0);
	instance_create_depth(x, y, depth, objBloodEmitter);
}