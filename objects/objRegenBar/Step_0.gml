if(instance_exists(objPlayer))
{
	x = objPlayer.x-sprite_width/2;
	y = objPlayer.y-13;
	image_xscale += 1 / objPlayer.maxFoxus;
}else
{
	instance_destroy();
}

if(image_xscale < 0)
{
	instance_destroy();
}

if(instance_number(objRegenBar) > 1)
{
	instance_destroy();
}