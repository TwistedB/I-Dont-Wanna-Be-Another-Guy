event_inherited();

if(instance_exists(objPlayer))
{
	if(objPlayer.x > shootAt)
	{
		playerSeen = true;
	}
}

if(grounded = false)
{
	image_index = 1;
	vspeed = jumpVel;
	jumpVel += 0.3;
	if(YStartJ = false){
		if(place_meeting(x, y+jumpVel, objBlock))
		{
			grounded = true;
		}
	}else
	{
		if(y + jumpVel >= ystart)
		{
			grounded = true;
		}
	}
}else
{
	y = startY
	image_index = 0;
	jumpVel = 0;
	vspeed = 0;
}