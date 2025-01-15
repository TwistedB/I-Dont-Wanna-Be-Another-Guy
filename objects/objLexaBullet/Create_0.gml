myScale = 0;

if(instance_exists(objPlayer))
{
	audio_play_sound(sndMagicShoot, 0, 0, 1, 0, 0.3);
	direction = point_direction(x, y, objPlayer.x, objPlayer.y);
}else
{
	instance_destroy();
}

canHit = false;
mySpeed = 0;
startMoving = false;
alarm[0] = 20;