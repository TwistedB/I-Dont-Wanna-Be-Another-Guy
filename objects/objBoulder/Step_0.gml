vspeed = yVel;
image_angle += 5;

yVel += 0.2;

if(place_meeting(x, y + yVel, objBlock) && hitRock = false)
{
	yVel = -5;
	hitRock = true;
}

if(hitRock = true && startFadin = false)
{
	alarm[0] = 30;
	startFadin = true
}

if(image_alpha = 0)
{
	instance_destroy();
}