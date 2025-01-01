
if(instance_exists(objPlayer))
{
	audio_play_sound(sndMagicShoot, 1, 0);
	direction = point_direction(x, y, objPlayer.x, objPlayer.y);
}else
{
	instance_destroy();
}

speedVel = 1;
glipsoTarget = false;