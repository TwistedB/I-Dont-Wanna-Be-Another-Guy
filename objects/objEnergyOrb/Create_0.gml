if(instance_exists(objPlayer))
{
	audio_play_sound(sndMagicShoot, 1, 0);
	direction = point_direction(x, y, objPlayer.x, objPlayer.y);
}else
{
	instance_destroy();
}

speed = 3;
myScale = random_range(0.7, 1)

image_xscale = myScale;
image_yscale = myScale;

slowDown = false;
blockHit = false;
preparingTheDeath = false;
finalAttack = false;