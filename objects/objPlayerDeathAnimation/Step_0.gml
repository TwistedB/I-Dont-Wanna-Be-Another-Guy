if(place_meeting(x, y+yVel, objBlock))
{
	y += yVel/2;
	yVel = 0;
	grounded = true;
	vspeed = 0;
}else
{
	yVel += 0.2;
}

if(grounded = false)
{
	if(place_meeting(x+hVel, y, objBlock))
	{
		hVel = -hVel;
		image_xscale = -image_xscale;
	}
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

if(done = true && startDrip = false && place_meeting(x, y+yVel, objBlock))
{
	instance_create_layer(x-7, y+4, layer, objPlayerDeathBloodDrip);
	startDrip = true;
}

if(fadeOut = true)
{
	image_alpha -= 0.1;
}

if(image_alpha < 0)
{
	instance_destroy();
}