image_alpha -= 0.03;

if(image_alpha < 0)
{
	instance_destroy();
}

hspeed = mySpeed;
image_xscale = -facing;

if(y < startY)
{
	vspeed = 3;
}else
{
	y = startY;
}

if(facing = 1)
{
	if(mySpeed > 0)
	{
		mySpeed -= 0.1;
	}else
	{
		mySpeed = 0;
	}
}

if(facing = -1)
{
	if(mySpeed < 0)
	{
		mySpeed += 0.1;
	}else
	{
		mySpeed = 0;
	}
}