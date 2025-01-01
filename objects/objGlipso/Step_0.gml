event_inherited();
if(y < dest && startFollowing = false)
{
	yVel += 1;
}else if(y > dest && startFollowing = false)
{
	yVel = 0;
	y = dest;
	startFollowing = true;
}

image_alpha += 0.1;

vspeed = yVel;

if(instance_exists(objPlayer))
{
	x = sine_wave(current_time / 1000, 3, 64, 0) + objPlayer.x;
	if(startFollowing = true)
	{
		y = objPlayer.y - 50;
	}
	
	if(x > objPlayer.x)
	{
		image_xscale = -1;
	}else
	{
		image_xscale = 1;
	}
}

if(startFollowing = true)
{
	if(startShoot = false)
	{
		startShoot = true
		alarm[0] = 50;
	}
}