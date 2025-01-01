if(instance_exists(objPlayer))
{
	audio_play_sound(sndMeow, 1, 0, 1, 0, random_range(0.7, 1.2));
	direction = point_direction(x, y, objPlayer.x, objPlayer.y);
}else
{
	instance_destroy();
}

speed = irandom_range(3, 4);
speedVel = 1;
glipsoTarget = false;

myScale = 0.1;
maxScale = random_range(0.6, 0.8);

image_xscale = myScale;
image_yscale = myScale;

scaled = false;

alarm[0] = 5;