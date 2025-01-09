if(destroySound = true)
{
	stop_music();
	play_music(currentMusic, 1);
	activate_trigger("BossDefeat");
	instance_create_depth(x, groundY, depth, objBallGibDead);
}