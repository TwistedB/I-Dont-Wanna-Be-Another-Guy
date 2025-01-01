event_inherited();

vspeed = yVel;
hspeed = hVel;

if(hitGround = false)
{
	if(place_meeting(x, y + yVel, objBlock))
	{
		hitGround = true;
		y -= yVel/2;
		yVel = 0;
	}else
	{
		yVel += 0.2;
	}
}

if(hitGround = true)
{
	if(instance_exists(objPlayer))
	{
		if(objPlayer.x > x)
		{
			if(hVel < 0)
			{
				hVel += 0.2;
			}else
			{
				hVel += 0.1;
			}
			image_angle -= 2 * hVel;
		}else
		{
			if(hVel > 0)
			{
				hVel -= 0.2;
			}else
			{
				hVel -= 0.1;
			}
			image_angle += 2 * -hVel;
		}
	}else
	{
		hVel = 0;
	}
}