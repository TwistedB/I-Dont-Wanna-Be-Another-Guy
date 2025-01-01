image_angle -= 5 * hspeed;

if(!place_meeting(x, y + yVel, objBlock))
{
	yVel += 0.2;
}

if(bouncing = 0)
{
	if(place_meeting(x, y + yVel, objBlock))
	{
		y -= yVel;
		yVel = 0;
	}
}else
{
	if(place_meeting(x, y + yVel, objBlock))
	{
		yVel = -3;
	}
}

if(place_meeting(x+hspeed, y-3, objBlock))
{
	instance_destroy();
}

if(myScale < 1)
{
	myScale += 0.1;
}else
{
	myScale = 1;
}

image_xscale = myScale;
image_yscale = myScale;

vspeed = yVel;