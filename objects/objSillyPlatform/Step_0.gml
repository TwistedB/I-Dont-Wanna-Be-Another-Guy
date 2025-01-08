event_inherited()

if(instance_exists(objPlayer))
{
	if(place_meeting(x, y-1, objPlayer))
	{
		if(activateOnTouch = true)
		{
			hspeed = xSpeed;
			vspeed = ySpeed;
		}
		activated = true;
	}else
	{
		if(activated = true)
		{
			activated = false;
		}
	}
}