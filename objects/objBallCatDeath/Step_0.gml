if(place_meeting(x, y+yVel, objBlock))
{
	y += yVel/2;
	yVel = 0;
	grounded = true;
	vspeed = 0;
}else
{
	yVel += 0.1;
}

hspeed = hVel;

vspeed = yVel;

if(grounded = true && done = false)
{
	image_index = 3;
	if(myDir = 1)
	{
		hVel -= 0.2;
		
		if(hVel < 0)
		{
			done = true;
			hspeed = 0;
			hVel = 0;
		}
	}else
	{
		hVel += 0.2;
		
		if(hVel > 0)
		{
			done = true;
			hspeed = 0;
			hVel = 0;
		}	
	}
}

if(fadeOut = true)
{
	image_alpha -= 0.1;
}

if(image_alpha < 0)
{
	instance_destroy();
}